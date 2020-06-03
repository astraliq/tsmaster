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
$config['path_libs'] = $config['path_root'] . '/../lib';
$config['path_templates'] = $config['path_root'] . '/../templates';
$config['path_logs'] = $config['path_root'] . '/../logs';


$config['sitename'] = 'ТехСервис&nbsp;Мастер';
$config['main_menu'] = [
      'О&nbsp;компании' => '/',
      'Преимущества' => '/',
      'Условия' => '/',
      'Акции' => '/',
      'Отзывы' => '/',
      'Контакты' => '/',
  ];
$config['service_menu'] = [
      'главная' => '/',
      'стиральная&nbsp;машина' => '/washing_machine',
      'посудомоечная&nbsp;машина' => '/dishwasher',
      'холодильник' => '/refrigerator',
      'духовой&nbsp;шкаф' => '/oven',
      'варочная&nbsp;панель' => '/hob',
  ];


