<?php

defined('_JEXEC') or die;

use Joomla\Utilities\ArrayHelper;


class GiftControllerSearchs extends JControllerAdmin
{
    public function __construct($config = array())
    {
        parent::__construct($config);
        $this->registerTask('unfeatured',	'featured');
    }

    public function getModel($name = '', $prefix = '', $config = array('ignore_request' => true))
    {
        $option = JRequest::getVar('option');
        $clearName = substr( $option, 4 );
        $prefix = ucfirst( $clearName ).'Model';
        $name = str_replace( 's', '', str_replace( ucfirst($clearName).'Controller', '', get_class() ) );
        return parent::getModel($name, $prefix, $config);
    }

}
