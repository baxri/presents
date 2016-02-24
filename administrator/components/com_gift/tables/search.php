<?php
defined('_JEXEC') or die('Restricted access');
jimport('joomla.database.table');

class GiftTableSearch extends JTable
{
    function __construct(&$db,  $field = 'id')
    {
        parent::__construct('#__gifcards', $field, $db);
    }
}
?>