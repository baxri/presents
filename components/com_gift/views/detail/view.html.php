<?php

defined('_JEXEC') or die;

use Joomla\Registry\Registry;

class GiftViewDetail extends JViewLegacy
{
	public function display($tpl = null)
	{
		$doc =& JFactory::getDocument();
		$doc->addStyleSheet( $this->baseurl.'/templates/gift/css/details.css' );

		parent::display($tpl);
	}
}
