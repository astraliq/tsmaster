<?php
declare(strict_types=1);
class Devices extends Model {
	public $defectsTable = 'defects';
	public $deviceTable = 'devices';
	public $defect2deviceTable = 'defect2device';

	public function __construct() {
		parent::__construct();
    	}

	public function getAllDevices() {
		$sql = "SELECT * FROM `$this->deviceTable`";
		return $this->dataBase->getRows($sql, null);
	}

	public function getById($id) {
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniSelect($this->defectsTable, $whereObject);
	}

	public function getByTitle($title) {
		$whereObject = [
			'title' => $title
		];
		return $this->dataBase->uniSelect($this->defectsTable, $whereObject);
	}

	public function deleteById($id) {
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniDelete($this->defectsTable, $whereObject);
	}
}
?>