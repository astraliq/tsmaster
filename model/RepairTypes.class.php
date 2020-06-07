<?php
declare(strict_types=1);
class RepairTypes extends Model {
	public $worksTable = 'works';
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
		return $this->dataBase->uniSelect($this->worksTable, $whereObject);
	}

	public function getByTitle($title) {
		$whereObject = [
			'title' => $title
		];
		return $this->dataBase->uniSelect($this->worksTable, $whereObject);
	}

	public function getByDeviceDefectId($deviceId, $defectId) {
		$sql = "SELECT works.`title`, works.`price` FROM `$this->worksTable` as works LEFT JOIN `$this->work2def2devTable` as wdd ON works.`id` = wdd.work_id WHERE wdd.device_id = $deviceId AND wdd.defect_id = $defectId";
		return $this->dataBase->getRows($sql, null);
	}

	public function getByDeviceLink($deviceId, $link) {
		$sql = "SELECT works.`title`, wdd.`price`, wdd.`defect_link`, def.title as pageTitle FROM `$this->worksTable` as works LEFT JOIN `$this->work2def2devTable` as wdd ON works.`id` = wdd.work_id LEFT JOIN `$this->defectsTable` as def ON wdd.defect_link = def.link WHERE wdd.device_id = $deviceId AND wdd.defect_link = '$link'";
		return $this->dataBase->getRows($sql, null);
	}

	public function getByDefectTitle($defectTitle) {
		$sql = "";
		return $this->dataBase->getRows($sql, null);
	}

	public function addOne($title) {
		$object = [
			'title' => $title,
		];
		return $this->dataBase->uniInsert($this->worksTable, $object);
	}

	public function addDeviceDefectWorksPrice($deviceId, $defectId, $defectLink, $workId, $price) {
		$object = [
			'device_id' => $deviceId,
			'defect_id' => $defectId,
			'defect_link' => $defectLink,
			'work_id' => $workId,
			'price' => $price,
		];
		return $this->dataBase->uniInsert($this->work2def2devTable, $object);
	}

	public function update($id, $name, $comment) {
		$object = [
			'name' => $name,
			'comment' => $comment
		];
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniUpdate($this->worksTable, $object, $whereObject);
	}

	public function deleteById($id) {
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniDelete($this->worksTable, $whereObject);
	}
}
?>