<?php
declare(strict_types=1);
class Reviews extends Model {
	public $reviewsTable = 'feedbacks';

	public function __construct() {
		parent::__construct();
    }

	public function getLastReviews($quantityOfLastReviews) {
		$sql = "SELECT * FROM `$this->reviewsTable` ORDER BY `date` DESC LIMIT $quantityOfLastReviews";
		return $this->dataBase->getRows($sql, null);
	}

	public function getReviewById($id) {
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniSelect($this->reviewsTable, $whereObject);
	}

	public function addReview($name, $phone, $rate, $review, $city) {
		$object = [
			'name' => $name,
			'phone' => $phone,
			'rate' => $rate,
			'review' => $review,
			'city' => $city
		];
		return $this->dataBase->uniInsert($this->reviewsTable, $object);
	}

	public function updateReview($id, $name, $comment) {
		$object = [
			'name' => $name,
			'comment' => $comment
		];
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniUpdate($this->reviewsTable, $object, $whereObject);
	}

	public function deleteReview($id) {
		$whereObject = [
			'id' => $id
		];
		return $this->dataBase->uniDelete($this->reviewsTable, $whereObject);
	}
}
?>