<?php

defined('_JEXEC') or die;

class GiftModelDetail extends JModelLegacy
{
	public function getGift( $gift_id ){

		$db = JFactory::getDBO();
		$query = $db->getQuery(true);

		$query->select('g.*, c.alias as category')
			->from( '#__gifcards as g' )
			->leftJoin( '#__groups as c on c.id = g.group_id' );

		$query->where('g.published = 1');

		$query->where('g.id = '.$gift_id);

		$db->setQuery( $query );
		$result = $db->loadObject();

		return $result;
	}

	public function getGiftGallery( $gift_id ){

	$db = JFactory::getDBO();
	$query = $db->getQuery(true);

	$query->select('*')
		->from( '#__gallery as g' );

	$query->where('g.published = 1');
	$query->where('g.gift_id = '.$gift_id);

	$db->setQuery( $query );
	$result = $db->loadObjectList();

	return $result;
}
}
