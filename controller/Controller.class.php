<?php
class Controller {
	public $view = 'index';

    public function __construct() {
        // $this->mainTitle = Config::get('sitename');
        // $this->mainMenu = Config::get('mainMenu');
        $this->model = new Model();
    }


}
?>