<?php
class Page404Controller extends IndexController {
    

    public function __construct() {
        parent::__construct();
    } 

	public function index($data) {
        
        return $this->page404($data);
	}

}