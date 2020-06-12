<?php
class Page404Controller extends Controller {
    public $title = '';
    public $pageId;
    public $jsonDb;
    public $json;
    public $pageName = '404';

    public function __construct() {
        parent::__construct();
        $this->json = new JsonFileParse();
        $this->jsonDb = $this->json->getArrayFromFile('/../db.json');
    } 

	public function index($data) {
        $this->pageId = 1;
        $this->view = '404';
        
        $arrayContent = [
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'pageId' => $this->pageId,
            'siteName' => $this->mainTitle,
        ];

        return $arrayContent;
	}

}