<?php
$config['db_user'] = 'admin';
$config['db_pass'] = 'admin';
$config['db_base'] = 'tsmaster';
$config['db_host'] = 'localhost';
$config['db_charset'] = 'UTF-8';
$config['db_driver'] = 'mysql';

$config['path_root'] = __DIR__;
$config['path_public'] = $config['path_root'] . '/../www';
$config['path_model'] = $config['path_root'] . '/../model';
$config['path_controller'] = $config['path_root'] . '/../controller';
$config['path_cache'] = $config['path_root'] . '/../cache';
$config['path_libs'] = $config['path_root'] . '/../libs';
$config['path_templates'] = $config['path_root'] . '/../templates';
$config['path_logs'] = $config['path_root'] . '/../logs';

$config['sitename'] = 'ТехСервис&nbsp;Мастер';
$config['main_menu'] = [
      'О&nbsp;компании' => '#about',
      'Преимущества' => '#advantage',
      'Услуги' => '#services',
      'Условия' => '#terms',
      'Акции' => '#action',
      'Отзывы' => '#reviews',
      'Контакты' => '#contacts',
  ];
$config['service_menu'] = [
      'главная' => '/',
      'стиральная&nbsp;машина' => '/washing_machine',
      'посудомоечная&nbsp;машина' => '/dishwasher',
      'холодильник' => '/refrigerator',
      'духовой&nbsp;шкаф' => '/oven',
      'варочная&nbsp;панель' => '/hob',
  ];
$config['services_items'] = [
      'ремонт стиральных машин' => [
        'link' => '/washing_machine',
        'img' => '../img/services/services_01.jpg'
    ],
      'ремонт посудомоечных машин' => [
        'link' => '/dishwasher',
        'img' => '../img/services/services_02.jpg'
    ],
      'ремонт холодильников' => [
        'link' => '/refrigerator',
        'img' => '../img/services/services_03.jpg'
    ],
      'ремонт духовых шкафов' => [
        'link' => '/oven',
        'img' => '../img/services/services_04.jpg'
    ],
      'ремонт варочных панелей' => [
        'link' => '/hob',
        'img' => '../img/services/services_05.jpg'
    ],
  ];

  $config['brands'] = [
    'atlant',
    'beko',
    'braun',
    'bosch', 'siemens',
    'electrolux',
    'gorenje',
    'delonghi',
    'haier',
    'krups', 'moulinex', 'rowenta', 'tefal' ,
    'midea',
    'lg',
    'panasonic',
    'philips',
    'samsung',
    'whirlpool',
    'xiaomi', 'mijia', 'bork', 'aeg', 'candy', 'gaggenau', 'indesit', 'kenwwod', 'korting', 'supra', 'kitfort', 'redmond', 'elenberg', 'rolsen', 'vitek', 'scarlett', 'sitronics',
];

