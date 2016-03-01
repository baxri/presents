<?php

defined('_JEXEC') or die;

use Joomla\Registry\Registry;

JTable::addIncludePath(JPATH_ADMINISTRATOR . '/components/com_gift/tables');

class GiftViewOrder extends JViewLegacy
{
	public function display($tpl = null)
	{
		$id = JRequest::getVar('id');
		$order = JTable::getInstance( 'order', 'GiftTable' );
		$order->load( $id );
		parent::display($tpl);
	}
}
