<?php

defined('_JEXEC') or die;


class CategoriesHelper
{

    /*
     * Getting Categories From DB
     *
     * */

    public static function getCategories(){

        $db = JFactory::getDBO();
        $query = $db->getQuery(true);

        $query->select('*')
            ->from( '#__groups' )
                ->where('published = 1')
                    ->order('ordering ASC');

        $db->setQuery( $query );

        $result = $db->loadObjectList();
        return $result;
    }
}
