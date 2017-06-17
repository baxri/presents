<?php

defined('_JEXEC') or die;

class GiftModelGift extends JModelLegacy
{
	public function loadGifts(){

		$cat = (int)JRequest::getVar('cat', '');

		if( $cat == 8 ){
			$cat = '';
		}

		$db = JFactory::getDBO();
		$query = $db->getQuery(true);

		$query->select('g.*, c.alias as category')
			->from( '#__gifcards as g' )
			->leftJoin( '#__groups as c on c.id = g.group_id' );

		$query->where('g.published = 1');

		if( !empty( $cat ) ){
			$query->where('g.group_id = '.$cat);
		}

		$query->order('g.ordering ASC');

		$db->setQuery( $query );
		$result = $db->loadObjectList();
		return $result;
	}
}
