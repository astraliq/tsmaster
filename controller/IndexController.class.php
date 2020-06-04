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
    public $pageName = 'ТехСервис Мастер';

    public function __construct() {
        parent::__construct();
        $this->json = new JsonFileParse();
        $this->defects = new Defects();
        $this->repairTypes = new RepairTypes();
        $this->jsonDb = $this->json->getArrayFromFile();
    } 

	public function index($data) {
        $this->pageId = 1;

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
        $this->pageId = 1;
        
        $arrayContent = [
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'pageId' => $this->pageId,
            'siteName' => $this->mainTitle,
        ];
        return $arrayContent;
    }

    public function washing_machine($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $defects = $this->defects->getByDeviceId(1);
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/washing_machine';
        $banner = 'img/defect_banners/defect_washing_machine.jpg';

        switch ($data['id']) {
            case 'ne_slivaet_vodu':
                $repTypes = $this->repairTypes->getByDeviceDefectId(1,4);
                $defectTableId = 2;
                
                break;
            
            default:
                $repTypes = [];
                $defectTableId = 1;
                $banner = 'img/repair_banners/repair_washing_machine.jpg';
                break;
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
            'defects' => $defects,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
        ];
        
        return $arrayContent;
    }
    
    public function dishwasher($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $defects = $this->defects->getByDeviceId(1);
        $otherBrandSectionTitle = 'любых';

        switch ($data['id']) {
            case 'ne_slivaet_vodu':
                $repTypes = $this->repairTypes->getByDeviceDefectId(1,1);
                $defectTableId = 2;
                break;
            
            default:
                $repTypes = [];
                $defectTableId = 1;
                break;
        }

        $arrayContent = [
            'siteName' => $this->mainTitle,
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'pageId' => $this->pageId,
            'defectTableId' => $defectTableId,
            'defects' => $defects,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
        ];
        
        return $arrayContent;
    }
	
}
?>