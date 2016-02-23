<?php
defined('_JEXEC') or die;

function d($str){
    echo '<pre>';
    print_r( $str );
    echo '<pre>';
    die;
}


$controller = JControllerLegacy::getInstance('Gift');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
