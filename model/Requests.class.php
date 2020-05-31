<?php
declare(strict_types=1);
class Requests extends Model {
	public $mailingTable = 'requests';

	public function __construct() {
		parent::__construct();
    }

	public function addRequestToDB($name, $phone, $reqType, $device = null, $defect = null, $description = null, $city = null) {
		$add = $this->dataBase->uniInsert($this->mailingTable, [
			'name' => $name,
			'phone_number' => $phone,
			'request_type' => $reqType,
			'device' => $device,
			'defect' => $defect,
			'description' => $description,
			'city' => $city,
		]);
    	return $add;
	}

	public function getRequestList($reqType, $city = null) {
		$get = $this->dataBase->uniSelect($this->mailingTable, [
			'request_type'=>$reqType,
		]);
    	return $get;
	}


}

?>