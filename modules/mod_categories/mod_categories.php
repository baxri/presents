<?php
defined('_JEXEC') or die;
require_once __DIR__ . '/helper.php';
$categories = CategoriesHelper::getCategories();

if( !empty( $categories ) ){
    require JModuleHelper::getLayoutPath('mod_categories', $params->get('layout', 'default'));
}