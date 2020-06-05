<?php
class IndexController extends Controller {
    public $title = '';
    public $mainTitle;
    public $pageId;
    public $jsonDb;
    public $cities;
    public $json;
    public $defects;
    public $repairTypes;
    public $cityId;
    public $cityInf;
    public $pageName = 'ТехСервис Мастер';

    public function __construct() {
        parent::__construct();
        $this->json = new JsonFileParse();
        $this->defects = new Defects();
        $this->repairTypes = new RepairTypes();
        $this->jsonDb = $this->json->getArrayFromFile();
        $this->cityId = $_SESSION['cityId'];
        $this->cityInf = $_SESSION['cityInf'];
    } 

	public function index($data) {
        $this->pageId = 1;

        $arrayContent = [
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'pageId' => $this->pageId,
            'siteName' => $this->mainTitle,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
        ];
        return $arrayContent;
	}

    public function page404($data) {
        $this->view = '404';
        $this->pageId = 1;
        
        $arrayContent = [
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'pageId' => $this->pageId,
            'siteName' => $this->mainTitle,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
        ];
        return $arrayContent;
    }

    public function washing_machine($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 1;
        $defects = $this->defects->getByDeviceId($deviceId);
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/washing_machine';
        $defectTableId = 1;
        $pageTitle = 'ремонт стиральных машин';
        $banner = 'img/repair_banners/repair_washing_machine.jpg';


        if ($data['id']) {
            $defectTableId = 2;
            $banner = 'img/defect_banners/defect_washing_machine.jpg';
            $repTypes = $this->repairTypes->getByDeviceLink($deviceId, '/' . $data['id']);
            $pageTitle = $repTypes[0]['pageTitle'];
        }
        
        // echo '<pre>';
        // print_r( $repTypes);
        // echo '</pre>';
        // exit();

        $arrayContent = [
            'siteName' => $this->mainTitle,
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'pageId' => $this->pageId,
            'defectTableId' => $defectTableId,
            'pageTitle' => $pageTitle,
            'defects' => $defects,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
        ];
        
        return $arrayContent;
    }

    public function dishwasher($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 2;
        $defects = $this->defects->getByDeviceId($deviceId);
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/dishwasher';
        $defectTableId = 1;
        $pageTitle = 'ремонт посудомоечных машин';
        $banner = 'img/repair_banners/repair_dishwasher.jpg';


        if ($data['id']) {
            $defectTableId = 2;
            $banner = 'img/defect_banners/defect_washing_machine.jpg';                          // ЗАМЕНИТЬ!
            $repTypes = $this->repairTypes->getByDeviceLink($deviceId, '/' . $data['id']);
            $pageTitle = $repTypes[0]['pageTitle'];
        }
        
        $arrayContent = [
            'siteName' => $this->mainTitle,
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'pageId' => $this->pageId,
            'defectTableId' => $defectTableId,
            'pageTitle' => $pageTitle,
            'defects' => $defects,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
        ];
        
        return $arrayContent;
    }
    

    

	
}
?>