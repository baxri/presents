<?php
defined('_JEXEC') or die;

function d($str){
    echo '<pre>';
    print_r( $str );
    echo '<pre>';
    die;
}



$task = JRequest::getVar('task');
$controller = JControllerLegacy::getInstance('Gift');
$controller->execute( $task );
$controller->redirect();
