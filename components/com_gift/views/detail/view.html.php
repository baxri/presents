<?php

defined('_JEXEC') or die;

use Joomla\Registry\Registry;

class GiftViewDetail extends JViewLegacy
{
	public function display($tpl = null)
	{
		$app = JFactory::getApplication();
		$model = $this->getModel();
		$gift_id = JRequest::getVar('gift');

		$this->gift = $model->getGift( $gift_id );

		if( empty( $this->gift->id ) ){
			$app->redirect('index.php');
		}

		$doc =& JFactory::getDocument();
		$doc->addStyleSheet( $this->baseurl.'/templates/gift/css/details.css' );



		parent::display($tpl);
	}
}
