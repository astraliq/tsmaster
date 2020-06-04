<?php
declare(strict_types=1);
class RepairTypes extends Model {
	public $repairTypesTable = 'repair_types';
	public $defectsTable = 'faults';

	public function __construct() {
		parent::__construct();
    	}


	public function getById($id) {
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniSelect($this->repairTypesTable, $whereObject);
	}

	public function getByDeviceDefectId($deviceId, $defectId) {
		$whereObject = [
			'fault_id' => $defectId,
			'device_id' => $deviceId
		];
		return $this->dataBase->uniSelect($this->repairTypesTable, $whereObject);
	}

	public function getByDefectTitle($defectTitle) {
		$sql = "SELECT f.`id`, title_ru, description_ru, year, cat.`category_title` as `main_category`, cntr.`country_title` as `country`, f.`main_img`, f.`actors`, f.`genres`, duration, f.`rating`  FROM `$this->filmsTable` as f LEFT JOIN `$this->categories` as cat ON f.`main_category_id` = cat.id LEFT JOIN `$this->countries` as cntr ON f.`country_id` = cntr.id WHERE `year` IN ($allYears)" . $filterCountry . $filterCategory . $exclude;
		return $this->dataBase->getRows($sql, null);
	}

	public function addOne($title, $price) {
		$object = [
			'title' => $name,
			'price' => $phone,
		];
		return $this->dataBase->uniInsert($this->repairTypesTable, $object);
	}

	public function update($id, $name, $comment) {
		$object = [
			'name' => $name,
			'comment' => $comment
		];
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniUpdate($this->repairTypesTable, $object, $whereObject);
	}

	public function deleteById($id) {
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniDelete($this->repairTypesTable, $whereObject);
	}
}
?>