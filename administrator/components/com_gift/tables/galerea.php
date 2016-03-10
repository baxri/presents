<?php
defined('_JEXEC') or die('Restricted access');
jimport('joomla.database.table');

class GiftTableGalerea extends JTable
{
    function __construct(&$db,  $field = 'id')
    {
        parent::__construct('#__gallery', $field, $db);
    }
}
?>