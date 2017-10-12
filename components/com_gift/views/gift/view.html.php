<?php

defined('_JEXEC') or die;

use Joomla\Registry\Registry;

class GiftViewGift extends JViewLegacy
{
	public function display($tpl = null)
	{
		$this->cat = (int)JRequest::getVar('cat', '');

		$doc = JFactory::getDocument();
		$doc->addStyleSheet( $this->baseurl.'/templates/gift/css/list.css' );

		$this->model = $this->getMOdel();
		$this->gifts = $this->model->loadGifts();

		parent::display($tpl);
	}
}
