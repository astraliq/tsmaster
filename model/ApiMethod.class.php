<?php
/*
 * Файл работы API
 * Файл ожидает что в _POST придет apiMethod с задачей, которую нужно выполнить
 * И (при необходимости) postData с информацией, необходимой для этой задачи
 *
 */

/*
 * Комментарий по json
 * Если использовать header('Content-Type: application/json');
 * То весь текст на странице попытается преобразоваться в json.
 * Следовательно нельзя будет увидеть ошибки, которые вам покажет php,
 * поэтому задает заголовок передаем в последний момент
 *
 * Если до этого были ошибки на php заголовок задать не получится
 *
 */
class ApiMethod {

	public $dataBase;
	public $method;
	public $requests;
	public $mailing;
	public $reviews;
	public $defects;
	public $devices;
	public $repairTypes;
	public $regExpPhone = '/^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/';

    public function __construct($method) {
        $this->method = $method;
        $this->dataBase = SQL::getInstance();
        $this->requests = new Requests();
        $this->mailing = new Mailing();
	  $this->reviews = new Reviews();
	  $this->defects = new Defects();
        $this->devices = new Devices();
        $this->repairTypes = new RepairTypes();
    }

	//Функция вывода ошибки
	private static function error($error_text, $code = 404) {
		http_response_code($code);
		echo json_encode([
			'error' => true,
			'error_text' => $error_text,
			'data' => null
		], JSON_UNESCAPED_UNICODE);
		exit();

	}

	//Функция успешного ответа
	private static function success($data = true) {
		header('Content-Type: application/json; charset=utf-8');
		echo json_encode($data, JSON_UNESCAPED_UNICODE);
		exit();

	}

	public function login() {
		//Получаем логин и пароль из postData
		$login = $_POST['postData']['login'] ?? '';
		$password = $_POST['postData']['password'] ?? '';

		//Если нет логина или пароля вызываем ошибку
		if (!$login || !$password) {
			$this->error('Логин или пароль не введены');
		}

		//приводим пароль к тому же виду, как он хранится в базе
		$password = SQL::cryptPassword($password, null);

		$whereObj = [
			'login' => $login,
			'password' => $password
		];

		//пытаемся найти пользователя
		$user = $this->dataBase->uniSelect($this->userModel->usersTable, $whereObj);
		//Если пользователь найден, записываем информацию о пользователе в сессию,
		//что бы к ней можно было обратиться с любой страницы
		//Если пользователь не найден, возвращаем ошибку
		// /index.php?path=user/createorder
		if ($user) {
			$_SESSION['user'] = $user;
			$data['result'] = 'OK';
			$data['referrer'] = $_SESSION['referrer']; 
			if (!$this->cartModel->getUserCart($_SESSION['user']['id']) && !empty($_COOKIE['cart'])) {
				if ($this->cartModel->insertCookieInCart($_COOKIE['cart'], $_SESSION['user']['id'])) {
					$this->success($data);
				}
			}
			$this->success($data);
		} else {
			$this->error('Неверный логин или пароль', 200);
		}
	}

	public function reg() {
		//Получаем логин и пароль из postData
		$login = $_POST['postData']['login'] ?? '';
		$password = $_POST['postData']['password'] ?? '';
		$password_repeat = $_POST['postData']['password_repeat'] ?? '';
		$name = $_POST['postData']['name'] ?? NULL;
		$surname = $_POST['postData']['surname'] ?? NULL;
		//Если нет логина или пароля вызываем ошибку

		if (!$login || !$password) {
			$this->error('Логин или пароль не введены');
		}
		if (!$password_repeat) {
			$this->error('Повторите пароль');
		}
		if ($password != $password_repeat) {
			$this->error('Пароли не совпадают');
		}
		if ($this->userModel->checkUser($login)) {
			$this->error('Пользователь с данным логином уже зарегистрирован');
		}

		//генерируем запрос и пытаемся добавить пользователя в базу
		$result = $this->userModel->regUser($login, $password, $name, $surname);

		//Если пользователь найден, записываем информацию о пользователе в сессию,
		//что бы к ней можно было обратиться с любой страницы
		//Если пользователь не найден, возвращаем ошибку
		if ($result) {
			$_SESSION['user']['login'] = $login;
			$data['result'] = "OK";
			$this->success($data);
		} else {
			$this->error('Ошибка записи пользователя в БД', 200);
		}
	}

	public function sendMailRepairRequest() {
		$name = $_POST['postData']['name'] ?? '';
		$phone = $_POST['postData']['phone'] ?? '';
		$device = $_POST['postData']['device'] ?? '';
		$defect = $_POST['postData']['defect'] ?? '';
		$city = $_POST['postData']['city'] ?? null;
		$reqType = 'заявка на ремонт';

		if (!preg_match($this->regExpPhone, $phone)) {
			$data['error_phone'] = true;
			$this->success($data);
		}

		if (!$name || !$phone) {
			$this->error('Не указаны имя или телефон');
		}
		if (!$device) {
			$this->error('Не указан вид техники');
		}
		if (!$defect) {
			$this->error('Не указана поломка');
		}
		$result = $this->mailing->sendMailRepairRequest($name, $phone, $reqType, $device, $defect, $city);

		if ($result) {
			$this->requests->addRequestToDB($name, $phone, $reqType, $device, $defect);
			$data['result'] = "OK";
			$this->success($data);
		} else {
			$this->error('Ошибка! Запрос не отправлен.', 200);
		}
	}

	public function sendMailPhoneRequest() {
		$name = $_POST['postData']['name'] ?? '';
		$phone = $_POST['postData']['phone'] ?? '';
		$device = $_POST['postData']['device'] ?? null;
		$defect = $_POST['postData']['defect'] ?? null;
		$city = $_POST['postData']['city'] ?? null;
		$reqType = 'заявка на звонок';

		if (!preg_match($this->regExpPhone, $phone)) {
			$data['error_phone'] = true;
			$this->success($data);
		}

		if (!$name || !$phone) {
			$this->error('Не указаны имя или телефон');
		}

		$result = $this->mailing->sendMailPhoneRequest($name, $phone, $reqType, $device, $defect, $city);

		if ($result) {
			$this->requests->addRequestToDB($name, $phone, $reqType, $device, $defect, $city);
			$data['result'] = "OK";
			$this->success($data);
		} else {
			$this->error('Ошибка! Запрос не отправлен.', 200);
		}
	}

	public function sendMailMasterRequest() {
		$name = $_POST['postData']['name'] ?? '';
		$phone = $_POST['postData']['phone'] ?? '';
		$device = $_POST['postData']['device'] ?? null;
		$defect = $_POST['postData']['defect'] ?? null;
		$city = $_POST['postData']['city'] ?? null;
		$reqType = 'заявка на выезд мастера';

		if (!preg_match($this->regExpPhone, $phone)) {
			$data['error_phone'] = true;
			$this->success($data);
		}

		if (!$name || !$phone) {
			$this->error('Не указаны имя или телефон');
		}

		$result = $this->mailing->sendMailRepairRequest($name, $phone, $reqType, $device, $defect, $city);

		if ($result) {
			$this->requests->addRequestToDB($name, $phone, $reqType, $device, $defect, $city);
			$data['result'] = "OK";
			$this->success($data);
		} else {
			$this->error('Ошибка! Запрос не отправлен.', 200);
		}
	}

	public function sendMailReview() {
		$name = $_POST['postData']['name'] ?? '';
		$phone = $_POST['postData']['phone'] ?? '';
		$rate = $_POST['postData']['rate'] ?? null;
		$review = $_POST['postData']['review'] ?? null;
		$city = $_POST['postData']['city'] ?? null;
		$reqType = 'новый отзыв';

		if (!preg_match($this->regExpPhone, $phone)) {
			$data['error_phone'] = true;
			$this->success($data);
		}

		if (!$name || !$phone) {
			$this->error('Не указаны имя или телефон');
		}

		if (!$review) {
			$this->error('Отзыв не может быть пустым');
		}

		$result = $this->mailing->sendMailReview($name, $phone, $reqType, $rate, $review, $city);

		if ($result) {
			$this->reviews->addReview($name, $phone, $rate, $review, $city);
			$data['result'] = "OK";
			$this->success($data);
		} else {
			$this->error('Ошибка! Запрос не отправлен.', 200);
		}
	}

	public function getDefects() {
		$deviceId = $_POST['postData']['deviceId'] ?? '';

		$defects = $this->defects->getByDeviceId($deviceId);

		if ($defects) {
			$data['result'] = "OK";
			$data['defects'] = $defects;
			$this->success($data);
		} else {
			$this->error('Ошибка! Запрос не отправлен.', 200);
		}
	}

	public function getDefectPrice() {
		$deviceId = $_POST['postData']['deviceId'] ?? '';
		$defectId = $_POST['postData']['defectId'] ?? '';

		$price = $this->defects->getDefectPriceByDevice($deviceId, $defectId);

		if ($price) {
			$data['result'] = "OK";
			$data['price'] = $price;
			$this->success($data);
		} else {
			$this->error('Ошибка! Запрос не отправлен.', 200);
		}
	}

	public function setCityId() {
		$cityId = $_POST['postData']['cityId'] ?? '';
		$cityInf = $_POST['postData']['cityInf'] ?? '';

		if (true) {
			$_SESSION['cityId'] = $cityId;
			$_SESSION['cityInf'] = $cityInf;
			$data['result'] = "OK";
			$this->success($data);
		} else {
			$this->error('Странная ошибка ^^', 200);
		}
	}

};

?>