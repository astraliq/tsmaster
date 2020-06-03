<?php
class IndexController extends Controller {
    public $title = '';
    public $mainTitle;
    public $pageId;
    public $jsonDb;
    public $cities;
    public $json;
    public $pageName = 'ТехСервис Мастер';

    public function __construct() {
        parent::__construct();
        $this->json = new JsonFileParse();
        $this->jsonDb = $this->json->getArrayFromFile();
    } 

	public function index($data) {
        $this->pageId = 1;

        // $catTitle = 'Число';
        // $randomData = $this->randomType->getRandomData($catTitle);
        // echo '<pre>'; 
        // print_r($this->jsonDb['site_name']);
        // echo '</pre>';
        // exit;
        $arrayContent = [
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'pageId' => $this->pageId,
            'siteName' => $this->mainTitle,
        ];
        return $arrayContent;
	}

    public function page404($data) {
        $this->view = '404';

        $arrayContent = [
            'jsonDb' => $this->jsonDb,
            'pageId' => 1,
            'siteName' => $this->mainTitle,
        ];
        return $arrayContent;
    }

    public function washing_machine($data) {
        $defects = $this->jsonDb['defects']['стиральная машина'];
        $defectTable = 1;
        // echo '<pre>'; 
        // print_r($data);
        // echo '</pre>';
        // exit;

        switch ($data['id']) {
            case 'ne_slivaet_vodu':
                $defectTable = 2;
                $defects = $this->jsonDb['defects']['стиральная машина']['Не сливает воду*180*/washing_machine/ne_slivaet_vodu'];
                $this->pageId = 2;
                $this->view = 'page2';
                break;
            
            default:
                $this->pageId = 2;
                $this->view = 'page2';
                break;
        }
// echo '<pre>'; 
//         print_r($defects);
//         echo '</pre>';
//         exit;

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
?>