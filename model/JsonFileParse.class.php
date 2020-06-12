<?php
declare(strict_types=1);
class JsonFileParse extends Model {
	public $table_main = '';
	public $table_first = '';
	public $table_second = '';

	public function __construct() {
		parent::__construct();
    }

	public function getArrayFromFile($file) {
		$string = file_get_contents(Config::get('path_root') . $file);
		// $string = file_get_contents('../db.json');
		if ($string === false) {
		    echo 'Ошибка чтения файла'; 
		    exit;
		}
		
		$json_a = json_decode($string, true);

		// echo '<pre>'; 
		// print_r(Config::get('path_root'));
		// echo '</pre>';
		// exit;
		
		if ($json_a === null) {
		//     echo 'Файл пустой или имеет синтаксические ошибки: не должно быть одинарных кавычек и не должно быть завершающей запятой (без последующего элемента)'; 
			echo '//--';
		//     exit;
		}
		// echo '<pre>'; 
		// print_r($json_a);
		// echo '</pre>';
		// exit;
		$result = $json_a;
		return $result;
	}

	public function addArrToSql($arr) {
		$columns = ['number','info'];
		$object = array();
		foreach ($arr as $element => $value) {
			$object[] = [$element,$value];
			
		};
		echo '<pre>'; 
		print_r($object);
		echo '</pre>';
		exit;
		$result = $this->dataBase->uniInsertArray($this->table_main, $columns, $object);
		echo $result;
		
		return $result;
	}
}

?>