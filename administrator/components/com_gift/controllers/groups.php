<?php

defined('_JEXEC') or die;

use Joomla\Utilities\ArrayHelper;


class GiftControllerGroups extends JControllerAdmin
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
        return parent::getModel($name, $prefix, $config);
    }

}
