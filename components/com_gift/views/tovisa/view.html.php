<?php

defined('_JEXEC') or die;

use Joomla\Registry\Registry;

JTable::addIncludePath(JPATH_ADMINISTRATOR . '/components/com_gift/tables');

class GiftViewToVisa extends JViewLegacy
{
	public function display($tpl = null)
	{
		$id = JRequest::getVar('id');
		$this->order = JTable::getInstance( 'order', 'GiftTable' );
		$this->order->load( $id );
		parent::display($tpl);
	}
}
