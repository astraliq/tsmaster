<?php
class IndexController extends Controller {
    public $title = '';
    public $mainTitle;
    public $pageId;
    public $jsonDb;
    public $cities;
    public $json;
    public $defects;
    public $defectsAll;
    public $devices;
    public $repairTypes;
    public $cityId;
    public $cityInf;
    public $isBrand = 0; // определитель брендованой страницы
    public $pageName = 'ТехСервис Мастер';
    public $actionMonthCSS;
    public $actionMonthCSS_2;

    public function __construct() {
        parent::__construct();
        $this->json = new JsonFileParse();
        $this->defects = new Defects();
        $this->devices = new Devices();
        $this->repairTypes = new RepairTypes();
        $this->jsonDb = $this->json->getArrayFromFile('/../db.json');
        $this->cityId = isset($_SESSION['cityId']) ? $_SESSION['cityId'] : 0;
        $this->cityInf = isset($_SESSION['cityInf']) ? $_SESSION['cityInf'] : 1;
        $this->actionMonthCSS = (mb_strlen($this->actionMonth) > 4 && mb_strlen($this->actionMonth) <= 6) ? 'letter_spacing_-1px' : ((mb_strlen($this->actionMonth) > 6) ? 'letter_spacing_-2px' : '');
        $this->actionMonthCSS_2 = (mb_strlen($this->actionMonth) > 4) ? 'letter_spacing_-1px' : '';
        $this->defectsAll = [
            'стиральная машина' => $this->defects->getByDeviceId(1),
            'посудомоечная машина' => $this->defects->getByDeviceId(2),
            'холодильник' => $this->defects->getByDeviceId(3),
            'духовой шкаф' => $this->defects->getByDeviceId(4),
            'варочная панель' => $this->defects->getByDeviceId(5),
        ];
    } 

    // public function addBd($data) {
    //     $deviceId = 1;
    //     $defectArr = [];
    //     $workArr = [];
    //     $priceArr = [];

    //     for ($i=0; $i < count($workArr); $i++) { 
    //         $defect = $this->defects->getByTitle($defectArr[$i]);
    //         $defectId = $defect['id'];
    //         $defectLink = $defect['link'];
    //         $workId = $this->repairTypes->getByTitle($workArr[$i])['id'];
    //         echo '<br>';
    //         echo $defectId;
    //         echo $defectLink;
    //         echo $workId;

    //         $this->repairTypes->addDeviceDefectWorksPrice($deviceId, $defectId, $defectLink, $workId, $priceArr[$i]);
    //     }
        
    //     exit();
	// }

	public function index($data) {
        $this->pageId = 1;

        // echo '<pre>';
        // print_r();
        // echo '</pre>';
        // exit();

        $arrayContent = [
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'service_menu_rodit' => $this->serviceMenuRodit,
            'pageId' => $this->pageId,
            'siteName' => $this->mainTitle,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
            'defectsAll' => $this->defectsAll,
            'devices' => $this->devices->getAllDevices(),
            'bg_class' => '',
            'actionMonth' => $this->actionMonth,
            'actionMonthCSS' => $this->actionMonthCSS,
        ];
        return $arrayContent;
	}

    public function page404($data) {
        $this->view = '404';
        $this->pageId = 1;
        // echo '<pre>';
        // print_r($this->serviceMenuRodit);
        // echo '</pre>';
        // exit();
        $arrayContent = [
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'service_menu_rodit' => $this->serviceMenuRodit,
            'pageId' => $this->pageId,
            'siteName' => $this->mainTitle,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
            'devices' => $this->devices->getAllDevices(),
            'isBrand' => $this->isBrand,
            'brands' => $data['brands'],
            'brand' => $data['brand'],
            'bg_class' => '',
            'actionMonth' => $this->actionMonth,
            'actionMonthCSS' => $this->actionMonthCSS,
        ];
        return $arrayContent;
    }

    public function washing_machine($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 1;      // заменять на id из базы device
        $defects = $this->defectsAll['стиральная машина'];
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/washing_machine'; // заменять ссылку
        $defectTableId = 1;
        $pageTitle = 'ремонт стиральных машин'; // заменять на название
        $serviceTitle = $pageTitle;
        $pageTitle2 = 'стиральной машины'; // заменять на название
        $pageTitle3 = 'стиральная машина'; // заменять на название
        $pageTitle4 = 'стиральной машиной'; // заменять на название
        $banner = 'img/repair_banners/repair_washing_machine.jpg';     // заменять баннер
        
        if ($data['id']) {
            $repTypes = $this->repairTypes->getByDeviceLink($deviceId, '/' . $data['id']);
            if (!$repTypes) { // переброс на страницу 404, если поломка не совпадает с техникой
                $this->page404($data);
            }
            $defectTableId = 2;
            $defect = $this->defects->getByLink('/' . $data['id']);
            $defectPrice = $this->defects->getDefectPriceByDevice($deviceId,$defect['id']);
            $banner = 'img/defect_banners/defect_washing_machine.jpg';
            $pageTitle = $repTypes[0]['pageTitle'];
        }

        // если идет запрос страницы с брэндом
        if (isset($data['brand'])) {
            $mainLink = '/' . $data['brand'] . '_' . substr($mainLink, 1, strlen($mainLink));
            $this->isBrand = 1;
        }

        $arrayContent = [
            'siteName' => $this->mainTitle, // название сайта в шапке и во вкладка браузера сайта
            'jsonDb' => $this->jsonDb, // база из файла bd.json
            'main_menu' => $this->mainMenu, // список верхнего меню со ссылками
            'service_menu' => $this->serviceMenu, // список главного меню
            'service_menu_rodit' => $this->serviceMenuRodit, // список главного меню в родительном падеже
            'pageId' => $this->pageId,  // ID страницы (2 или 3)
            'defectTableId' => $defectTableId, // ID таблицы дефектов
            'pageTitle' => $pageTitle, // название страницы
            'pageTitle2' => $pageTitle2, // название страницы в родит. падеже
            'pageTitle3' => $pageTitle3, // название страницы в именит. падеже
            'pageTitle4' => $pageTitle4, // название страницы в творит. падеже
            'defects' => $defects, // данные дефектов из БД по технике
            'defectsAll' => $this->defectsAll, // данные дефектов из БД всех видов техник
            'repTypes' => $repTypes, // данные по видам работ в зависимости от дефектов
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner, // баннер в названии страницы
            'mainLink' => $mainLink, // URL страницы
            'cityId' => $this->cityId, // id Города
            'cityInf' => $this->cityInf, // информация о выборе города
            'serviceItems' => $this->serviceItems, // список блока с адресами картинок и названиями видов ремонта
            'serviceTitle' => $serviceTitle, // название текущей страницы
            'devices' => $this->devices->getAllDevices(), // все виды техник из БД
            'deviceId' => $deviceId, // id техники из БД
            'defect' => $defect, // id дефекта из БД
            'defectPrice' => $defectPrice, // стоимость ремонта дефекта из БД
            'isBrand' => $this->isBrand, // маркер для определения брендованой страницы - 1/0
            'brands' => $data['brands'], // список доступных брендов
            'brand' => $data['brand'], // выбранный бренд
            'bg_class' => 'color_btn_2', // css класс
            'actionMonth' => $this->actionMonth, // текущий месяц для акций
            'actionMonthCSS' => $this->actionMonthCSS_2, // css класс текущего месяца, уменьшающий расстояние между символами
        ];
        
        return $arrayContent;
    }

    public function dishwasher($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 2;      // заменять на id из базы device
        $defects = $this->defectsAll['посудомоечная машина'];
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/dishwasher'; // заменять ссылку
        $defectTableId = 1;
        $pageTitle = 'ремонт посудомоечных машин'; // заменять на название
        $serviceTitle = $pageTitle;
        $pageTitle2 = 'посудомоечной машины'; // заменять на название
        $pageTitle3 = 'посудомоечная машина'; // заменять на название
        $pageTitle4 = 'посудомоечной машиной'; // заменять на название
        $banner = 'img/repair_banners/repair_dishwasher.jpg';     // заменять баннер

        if ($data['id']) {
            $repTypes = $this->repairTypes->getByDeviceLink($deviceId, '/' . $data['id']);
            if (!$repTypes) { // переброс на страницу 404, если поломка не совпадает с техникой
                $this->page404($data);
            }
            $defectTableId = 2;
            $defect = $this->defects->getByLink('/' . $data['id']);
            $defectPrice = $this->defects->getDefectPriceByDevice($deviceId,$defect['id']);
            $banner = 'img/defect_banners/defect_washing_machine.jpg';                          // ЗАМЕНИТЬ!
            $pageTitle = $repTypes[0]['pageTitle'];
        }
        
        // если идет запрос страницы с брэндом
        if (isset($data['brand'])) {
            $mainLink = '/' . $data['brand'] . '_' . substr($mainLink, 1, strlen($mainLink));
            $this->isBrand = 1;
        }

        $arrayContent = [
            'siteName' => $this->mainTitle,
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'service_menu_rodit' => $this->serviceMenuRodit,
            'pageId' => $this->pageId,
            'defectTableId' => $defectTableId,
            'pageTitle' => $pageTitle,
            'pageTitle2' => $pageTitle2,
            'pageTitle3' => $pageTitle3,
            'pageTitle4' => $pageTitle4, // название страницы в творит. падеже
            'TitleLetterSpacing' => '',
            'defects' => $defects,
            'defectsAll' => $this->defectsAll,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
            'serviceTitle' => $serviceTitle,
            'devices' => $this->devices->getAllDevices(),
            'deviceId' => $deviceId, // id техники из БД
            'defect' => $defect, // id дефекта из БД
            'defectPrice' => $defectPrice, // стоимость ремонта дефекта из БД
            'isBrand' => $this->isBrand,
            'brands' => $data['brands'],
            'brand' => $data['brand'],
            'bg_class' => 'color_btn_2',
            'hStyle' => 'font_size28',
            'actionMonth' => $this->actionMonth,
            'actionMonthCSS' => $this->actionMonthCSS_2,
        ];
        
        return $arrayContent;
    }
    
    public function refrigerator($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 3;      // заменять на id из базы device
        $defects = $this->defectsAll['холодильник'];
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/refrigerator'; // заменять ссылку
        $defectTableId = 1;
        $pageTitle = 'ремонт холодильников'; // заменять на название
        $serviceTitle = $pageTitle;
        $pageTitle2 = 'холодильника'; // заменять на название
        $pageTitle3 = 'холодильник'; // заменять на название
        $pageTitle4 = 'холодильником'; // заменять на название
        $banner = 'img/repair_banners/repair_refrigerator.jpg';     // заменять баннер

        if ($data['id']) {
            $repTypes = $this->repairTypes->getByDeviceLink($deviceId, '/' . $data['id']);
            if (!$repTypes) { // переброс на страницу 404, если поломка не совпадает с техникой
                $this->page404($data);
            }
            $defectTableId = 2;
            $defect = $this->defects->getByLink('/' . $data['id']);
            $defectPrice = $this->defects->getDefectPriceByDevice($deviceId,$defect['id']);
            $banner = 'img/defect_banners/defect_washing_machine.jpg';                          // ЗАМЕНИТЬ!
            $pageTitle = $repTypes[0]['pageTitle'];
        }
        
        // если идет запрос страницы с брэндом
        if (isset($data['brand'])) {
            $mainLink = '/' . $data['brand'] . '_' . substr($mainLink, 1, strlen($mainLink));
            $this->isBrand = 1;
        }

        $arrayContent = [
            'siteName' => $this->mainTitle,
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'service_menu_rodit' => $this->serviceMenuRodit,
            'pageId' => $this->pageId,
            'defectTableId' => $defectTableId,
            'pageTitle' => $pageTitle,
            'pageTitle2' => $pageTitle2,
            'pageTitle3' => $pageTitle3,
            'pageTitle4' => $pageTitle4, // название страницы в творит. падеже
            'defects' => $defects,
            'defectsAll' => $this->defectsAll,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
            'serviceTitle' => $serviceTitle,
            'devices' => $this->devices->getAllDevices(),
            'deviceId' => $deviceId, // id техники из БД
            'defect' => $defect, // id дефекта из БД
            'defectPrice' => $defectPrice, // стоимость ремонта дефекта из БД
            'isBrand' => $this->isBrand,
            'brands' => $data['brands'],
            'brand' => $data['brand'],
            'bg_class' => '',
            'actionMonth' => $this->actionMonth,
            'actionMonthCSS' => $this->actionMonthCSS_2,
        ];
        
        return $arrayContent;
    }

    public function oven($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 4;      // заменять на id из базы device
        $defects = $this->defectsAll['духовой шкаф'];
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/oven'; // заменять ссылку
        $defectTableId = 1;
        $pageTitle = 'ремонт духовых шкафов'; // заменять на название
        $serviceTitle = $pageTitle;
        $pageTitle2 = 'духового шкафа'; // заменять на название
        $pageTitle3 = 'духовой шкаф'; // заменять на название
        $pageTitle4 = 'духовым шкафом'; // заменять на название
        $banner = 'img/repair_banners/repair_oven.jpg';     // заменять баннер

        if ($data['id']) {
            $repTypes = $this->repairTypes->getByDeviceLink($deviceId, '/' . $data['id']);
            if (!$repTypes) { // переброс на страницу 404, если поломка не совпадает с техникой
                $this->page404($data);
            }
            $defectTableId = 2;
            $defect = $this->defects->getByLink('/' . $data['id']);
            $defectPrice = $this->defects->getDefectPriceByDevice($deviceId,$defect['id']);
            $banner = 'img/defect_banners/defect_washing_machine.jpg';                          // ЗАМЕНИТЬ!
            $pageTitle = $repTypes[0]['pageTitle'];
        }
        
        // если идет запрос страницы с брэндом
        if (isset($data['brand'])) {
            $mainLink = '/' . $data['brand'] . '_' . substr($mainLink, 1, strlen($mainLink));
            $this->isBrand = 1;
        }

        $arrayContent = [
            'siteName' => $this->mainTitle,
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'service_menu_rodit' => $this->serviceMenuRodit,
            'pageId' => $this->pageId,
            'defectTableId' => $defectTableId,
            'pageTitle' => $pageTitle,
            'pageTitle2' => $pageTitle2,
            'pageTitle3' => $pageTitle3,
            'pageTitle4' => $pageTitle4, // название страницы в творит. падеже
            'defects' => $defects,
            'defectsAll' => $this->defectsAll,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
            'serviceTitle' => $serviceTitle,
            'devices' => $this->devices->getAllDevices(),
            'deviceId' => $deviceId, // id техники из БД
            'defect' => $defect, // id дефекта из БД
            'defectPrice' => $defectPrice, // стоимость ремонта дефекта из БД
            'isBrand' => $this->isBrand,
            'brands' => $data['brands'],
            'brand' => $data['brand'],
            'bg_class' => '',
            'actionMonth' => $this->actionMonth,
            'actionMonthCSS' => $this->actionMonthCSS_2,
        ];
        
        return $arrayContent;
    }

    public function hob($data) {
        $this->view = 'page2';
        $this->pageId = 2;
        $deviceId = 5;      // заменять на id из базы device
        $defects = $this->defectsAll['варочная панель'];
        $otherBrandSectionTitle = 'любых';
        $mainLink = '/hob'; // заменять ссылку
        $defectTableId = 1;
        $pageTitle = 'ремонт варочных панелей'; // заменять на название
        $serviceTitle = $pageTitle;
        $pageTitle2 = 'варочной панели'; // заменять на название
        $pageTitle3 = 'варочная панель'; // заменять на название
        $pageTitle4 = 'варочной панелью'; // заменять на название
        $banner = 'img/repair_banners/repair_hob.jpg';     // заменять баннер

        if ($data['id']) {
            $repTypes = $this->repairTypes->getByDeviceLink($deviceId, '/' . $data['id']);
            if (!$repTypes) { // переброс на страницу 404, если поломка не совпадает с техникой
                $this->page404($data);
            }
            $defectTableId = 2;
            $defect = $this->defects->getByLink('/' . $data['id']);
            $defectPrice = $this->defects->getDefectPriceByDevice($deviceId,$defect['id']);
            $banner = 'img/defect_banners/defect_washing_machine.jpg';                          // ЗАМЕНИТЬ!
            $pageTitle = $repTypes[0]['pageTitle'];
        }
        
        // если идет запрос страницы с брэндом
        if (isset($data['brand'])) {
            $mainLink = '/' . $data['brand'] . '_' . substr($mainLink, 1, strlen($mainLink));
            $this->isBrand = 1;
        }

        $arrayContent = [
            'siteName' => $this->mainTitle,
            'jsonDb' => $this->jsonDb,
            'main_menu' => $this->mainMenu,
            'service_menu' => $this->serviceMenu,
            'service_menu_rodit' => $this->serviceMenuRodit,
            'pageId' => $this->pageId,
            'defectTableId' => $defectTableId,
            'pageTitle' => $pageTitle,
            'pageTitle2' => $pageTitle2,
            'pageTitle3' => $pageTitle3,
            'pageTitle4' => $pageTitle4, // название страницы в творит. падеже
            'defects' => $defects,
            'defectsAll' => $this->defectsAll,
            'repTypes' => $repTypes,
            'otherBrandSectionTitle' => $otherBrandSectionTitle,
            'banner' => $banner,
            'mainLink' => $mainLink,
            'cityId' => $this->cityId,
            'cityInf' => $this->cityInf,
            'serviceItems' => $this->serviceItems,
            'serviceTitle' => $serviceTitle,
            'devices' => $this->devices->getAllDevices(),
            'deviceId' => $deviceId, // id техники из БД
            'defect' => $defect, // id дефекта из БД
            'defectPrice' => $defectPrice, // стоимость ремонта дефекта из БД
            'isBrand' => $this->isBrand,
            'brands' => $data['brands'],
            'brand' => $data['brand'],
            'bg_class' => '',
            'actionMonth' => $this->actionMonth,
            'actionMonthCSS' => $this->actionMonthCSS_2,
        ];
        
        return $arrayContent;
    }
    
	
}
?>