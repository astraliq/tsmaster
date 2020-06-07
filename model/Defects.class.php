<?php
declare(strict_types=1);
class Defects extends Model {
	public $defectsTable = 'defects';
	public $deviceTable = 'devices';
	public $defect2deviceTable = 'defect2device';

	public function __construct() {
		parent::__construct();
    	}


	public function getById($id) {
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniSelect($this->defectsTable, $whereObject);
	}

	public function getByDeviceId($deviceId) {
		$sql = "SELECT def.`id`, def.`title`, def.`link`, dd.`price` FROM `$this->defectsTable` as def LEFT JOIN `$this->defect2deviceTable` as dd ON def.`id` = dd.defect_id WHERE dd.device_id = $deviceId";
		return $this->dataBase->getRows($sql, null);
	}

	public function getByTitle($title) {
		$whereObject = [
			'title' => $title
		];
		return $this->dataBase->uniSelect($this->defectsTable, $whereObject);
	}

	public function getDefectPriceByDevice($deviceId, $defectId) {
		$whereObject = [
			'device_id' => $deviceId,
			'defect_id' => $defectId,
		];
		return $this->dataBase->uniSelect($this->defect2deviceTable, $whereObject);
	}

	public function getByBrand($brand) {
		$whereObject = [
			'brand' => $brand
		];
		return $this->dataBase->uniSelect($this->defectsTable, $whereObject);
	}

	public function addOne($title, $price) {
		$object = [
			'title' => $name,
			'price' => $phone,
		];
		return $this->dataBase->uniInsert($this->defectsTable, $object);
	}

	public function update($id, $name, $comment) {
		$object = [
			'name' => $name,
			'comment' => $comment
		];
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniUpdate($this->defectsTable, $object, $whereObject);
	}

	public function deleteById($id) {
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniDelete($this->defectsTable, $whereObject);
	}
}
?>