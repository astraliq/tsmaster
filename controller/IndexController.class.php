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
            'serviceItems' => $this->serviceItems,
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
            'serviceItems' => $this->serviceItems,
        ];
        return $arrayContent;
    }

    public function washing_machine($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 1;      // заменять на id из базы device
        $defects = $this->defects->getByDeviceId($deviceId);
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/washing_machine'; // заменять ссылку
        $defectTableId = 1;
        $pageTitle = 'ремонт стиральных машин'; // заменять на название
        $pageTitle2 = 'стиральной машины'; // заменять на название
        $banner = 'img/repair_banners/repair_washing_machine.jpg';     // заменять баннер


        if ($data['id']) {
            $defectTableId = 2;
            $banner = 'img/defect_banners/defect_washing_machine.jpg';
            $repTypes = $this->repairTypes->getByDeviceLink($deviceId, '/' . $data['id']);
            $pageTitle = $repTypes[0]['pageTitle'];
        }
        
        // echo '<pre>';
        // print_r( $this->serviceItems);
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
            'pageTitle2' => $pageTitle2,
            'defects' => $defects,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
        ];
        
        return $arrayContent;
    }

    public function dishwasher($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 2;      // заменять на id из базы device
        $defects = $this->defects->getByDeviceId($deviceId);
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/dishwasher'; // заменять ссылку
        $defectTableId = 1;
        $pageTitle = 'ремонт посудомоечных машин'; // заменять на название
        $pageTitle2 = 'посудомоечной машины'; // заменять на название
        $banner = 'img/repair_banners/repair_dishwasher.jpg';     // заменять баннер


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
            'pageTitle2' => $pageTitle2,
            'defects' => $defects,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
        ];
        
        return $arrayContent;
    }
    
    public function refrigerator($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 3;      // заменять на id из базы device
        $defects = $this->defects->getByDeviceId($deviceId);
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/refrigerator'; // заменять ссылку
        $defectTableId = 1;
        $pageTitle = 'ремонт холодильников'; // заменять на название
        $pageTitle2 = 'холодильника'; // заменять на название
        $banner = 'img/repair_banners/repair_refrigerator.jpg';     // заменять баннер


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
            'pageTitle2' => $pageTitle2,
            'defects' => $defects,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
        ];
        
        return $arrayContent;
    }

    public function oven($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 4;      // заменять на id из базы device
        $defects = $this->defects->getByDeviceId($deviceId);
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/oven'; // заменять ссылку
        $defectTableId = 1;
        $pageTitle = 'ремонт духовых шкафов'; // заменять на название
        $pageTitle2 = 'духового шкафа'; // заменять на название
        $banner = 'img/repair_banners/repair_oven.jpg';     // заменять баннер


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
            'pageTitle2' => $pageTitle2,
            'defects' => $defects,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
        ];
        
        return $arrayContent;
    }

    public function hob($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 5;      // заменять на id из базы device
        $defects = $this->defects->getByDeviceId($deviceId);
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/hob'; // заменять ссылку
        $defectTableId = 1;
        $pageTitle = 'ремонт варочных панелей'; // заменять на название
        $pageTitle2 = 'варочной панели'; // заменять на название
        $banner = 'img/repair_banners/repair_hob.jpg';     // заменять баннер


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
            'pageTitle2' => $pageTitle2,
            'defects' => $defects,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
        ];
        
        return $arrayContent;
    }
    

	
}
?>