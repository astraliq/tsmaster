<?php
declare(strict_types=1);
class Mailing extends Model {
	public $mailingTable = 'mailing';
	public $mainMail;
	private $mailSMTP;
	// имена ключей должны быть одинаковыми

	public function __construct() {
		parent::__construct();
		$this->mainMail = Config::get('main_email');
		// $this->mainMail = new SendMailSmtp(Config::get('mail'), Config::get('mail_pass'), 'ssl://smtp.yandex.ru', Config::get('mail_name'), 465);
		// $mailSMTP = new SendMailSmtpClass('логин', 'пароль', 'хост', 'имя отправителя');
    }

	public function sendMailBySMTP($email) {
		$loader = new \Twig\Loader\FilesystemLoader('../mail_templates');
		$twig = new \Twig\Environment($loader);
		$template = $twig->loadtemplate('confirm_mailing.tpl');

		$hash = $this->generator->genHash($email);

		$arrayContent = [
		    'hash' =>  $hash,
		];
		// echo '<pre>';
		// print_r($arrayContent);
		// echo '</pre/>';
		// exit();
		$message = $template->render($arrayContent);
		$headers= "MIME-Version: 1.0\r\n";
		$headers .= "Content-type: text/html; charset=utf-8\r\n"; // кодировка письма
		$headers .= "From: SiteName <SiteName@yandex.ru>\r\n"; // от кого письмо
		$result =  $this->mailSMTP->send([$email], 'Подтверждение подписки', $message, $headers); // отправляем письмо

    	return $result = [
    		'result' => $result,
    		'hash' => $hash
    	];
	}

	public function sendMailRepairRequest($name, $phone, $reqType, $device, $defect, $city = null) {
		$loader = new \Twig\Loader\FilesystemLoader('../mail_templates');
		$twig = new \Twig\Environment($loader);
		$template = $twig->loadtemplate('repair_request-mailing.tpl');


		$arrayContent = [
		    'name' =>  $name,
		    'phone' =>  $phone,
		    'reqType' =>  $reqType,
		    'device' =>  $device,
		    'defect' =>  $defect,
		    'city' =>  $city,
		];
		// echo '<pre>';
		// print_r($arrayContent);
		// echo '</pre/>';
		// exit();
		$message = $template->render($arrayContent);

		// несколько получателей
		$to = $this->mainMail; // список получателей через запятую

		// тема письма
		$subject = 'Заявка на ремонт';

		// Для отправки HTML-письма должен быть установлен заголовок Content-type
		$headers[] = 'MIME-Version: 1.0';
		$headers[] = 'Content-type: text/html; charset=iso-8859-1';

		// Дополнительные заголовки
		// $headers[] = 'To: Mary <mary@example.com>, Kelly <kelly@example.com>';
		$headers[] = 'From: TS Master <info@tsmaster.com>';
		// $headers[] = 'Cc: birthdayarchive@example.com';
		// $headers[] = 'Bcc: birthdaycheck@example.com';

		// Отправляем
		$result = mail($to, $subject, $message, implode("\r\n", $headers));

		// if (!$result) {
		//     return $errorMessage = error_get_last()['message'];
		// }

    		return $result;
	}

	public function sendMailReview($name, $phone, $reqType, $rate, $review, $city = null) {
		$loader = new \Twig\Loader\FilesystemLoader('../mail_templates');
		$twig = new \Twig\Environment($loader);
		$template = $twig->loadtemplate('review-mailing.tpl');


		$arrayContent = [
		    'name' =>  $name,
		    'phone' =>  $phone,
		    'reqType' =>  $reqType,
		    'rate' =>  $rate,
		    'review' =>  $review,
		    'city' =>  $city,
		];
		// echo '<pre>';
		// print_r($arrayContent);
		// echo '</pre/>';
		// exit();
		$message = $template->render($arrayContent);

		// несколько получателей
		$to = $this->mainMail; // список получателей через запятую

		// тема письма
		$subject = 'Новый отзыв';

		// Для отправки HTML-письма должен быть установлен заголовок Content-type
		$headers[] = 'MIME-Version: 1.0';
		$headers[] = 'Content-type: text/html; charset=iso-8859-1';

		// Дополнительные заголовки
		// $headers[] = 'To: Mary <mary@example.com>, Kelly <kelly@example.com>';
		$headers[] = 'From: TS Master <info@tsmaster.com>';
		// $headers[] = 'Cc: birthdayarchive@example.com';
		// $headers[] = 'Bcc: birthdaycheck@example.com';

		// Отправляем
		$result = mail($to, $subject, $message, implode("\r\n", $headers));

		// if (!$result) {
		//     return $errorMessage = error_get_last()['message'];
		// }

    		return $result;
	}
	


	public function sendMailPhoneRequest($name, $phone, $reqType, $device, $defect, $city = null) {
		$loader = new \Twig\Loader\FilesystemLoader('../mail_templates');
		$twig = new \Twig\Environment($loader);
		$template = $twig->loadtemplate('phone_request-mailing.tpl');

		$arrayContent = [
		    'name' =>  $name,
		    'phone' =>  $phone,
		    'reqType' =>  $reqType,
		    'city' =>  $city,
		];
		// echo '<pre>';
		// print_r($arrayContent);
		// echo '</pre/>';
		// exit();
		$message = $template->render($arrayContent);

		// несколько получателей
		$to = $this->mainMail; // список получателей через запятую

		// тема письма
		$subject = 'Заявка на звонок';

		// Для отправки HTML-письма должен быть установлен заголовок Content-type
		$headers[] = 'MIME-Version: 1.0';
		$headers[] = 'Content-type: text/html; charset=iso-8859-1';

		// Дополнительные заголовки
		// $headers[] = 'To: Mary <mary@example.com>, Kelly <kelly@example.com>';
		$headers[] = 'From: TS Master <info@tsmaster.com>';
		// $headers[] = 'Cc: birthdayarchive@example.com';
		// $headers[] = 'Bcc: birthdaycheck@example.com';

		// Отправляем
		$result = mail($to, $subject, $message, implode("\r\n", $headers));

		// if (!$result) {
		//     return $errorMessage = error_get_last()['message'];
		// }

    		return $result;
	}
}

?>