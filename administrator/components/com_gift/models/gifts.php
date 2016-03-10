<?php

defined('_JEXEC') or die;

use Joomla\Utilities\ArrayHelper;

class GiftModelGifts extends JModelList
{
    public function __construct($config = array())
    {
        if (empty($config['filter_fields']))
        {
            $config['filter_fields'] = array(
                'id', 'a.id',
                'name', 'a.name',
                'published', 'a.published',
                'ordering', 'a.ordering'
            );
        }

        parent::__construct($config);
    }

    protected function populateState($ordering = null, $direction = null)
    {
        parent::populateState('a.id', 'desc');
    }

    public function getTable($type = '', $prefix = '', $config = array())
    {
        $option = JRequest::getVar('option');
        $clearName = substr( $option, 4 );
        $prefix = ucfirst( $clearName ).'Table';
        $type = str_replace( ucfirst($clearName).'Model', '', get_class() );
        $type = substr( $type, 0, strlen($type) - 1 );
        $table = JTable::getInstance($type, $prefix, $config);
        return $table;
    }

    protected function getListQuery()
    {
        $table = $this->getTable( $type = '', $prefix = '', $config = array() );
        $group = (int)$this->getState('filter.group');
        $status = (int)$this->getState('filter.status');
        $db = $this->getDbo();
        $query = $db->getQuery(true);

        $query->select('a.*, g.name as category');
        $query->from($db->quoteName($table->getTableName(),'a'));
        $query->leftJoin( '#__groups as g on g.id = a.group_id' );

        if( !empty( $group ) ){
            $query->where( 'group_id = '.$group );
        }

        $query->order($db->escape($this->getState('list.ordering', 'a.id')) . ' ' . $db->escape($this->getState('list.direction', 'ASC')));
        return $query;
    }
}
