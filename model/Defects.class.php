<?php
declare(strict_types=1);
class Defects extends Model {
	public $defectsTable = 'faults';

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
		$whereObject = [
			'device_id' => $deviceId
		];
		return $this->dataBase->uniSelect($this->defectsTable, $whereObject);
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