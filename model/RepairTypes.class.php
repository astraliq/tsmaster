<?php
declare(strict_types=1);
class RepairTypes extends Model {
	public $repairTypesTable = 'works';
	public $defectsTable = 'defects';
	public $deviceTable = 'devices';
	public $work2def2devTable = 'work2defect2device';

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
		$sql = "SELECT rpt.`title`, rpt.`price` FROM `$this->repairTypesTable` as rpt LEFT JOIN `$this->work2def2devTable` as wdd ON rpt.`id` = wdd.`work_id` WHERE wdd.`device_id` = $deviceId AND wdd.`defect_id` = $defectId";
		return $this->dataBase->getRows($sql, null);
	}

	public function getByDefectTitle($defectTitle) {
		$sql = "";
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