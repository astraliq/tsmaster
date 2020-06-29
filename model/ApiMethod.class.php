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
			$this->requests->addRequestToDB($name, $phone, $reqType, $device, $defect, $city);
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