<?php
class Page404Controller extends Controller {
    public $title = '';
    public $mainTitle;
    public $pageId;
    public $jsonDb;
    public $json;
    public $pageName = 'ТехСервис Мастер';

    public function __construct() {
        parent::__construct();
        $this->json = new JsonFileParse();
        $this->jsonDb = $this->json->getArrayFromFile();
        $this->mainTitle = $this->jsonDb['site_name'];
    } 

	public function index($data) {
        $this->view = '404';
        
        $arrayContent = [
            'jsonDb' => $this->jsonDb,
            'pageId' => 1,
            'siteName' => $this->mainTitle,
        ];
        return $arrayContent;
	}

}