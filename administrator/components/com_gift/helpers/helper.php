<?php

defined('_JEXEC') or die;

class ComponentHelper extends JHelperContent
{
	public static function addSubmenu($vName)
	{
		$option = JRequest::getVar('option');
		$canDo = JHelperContent::getActions( $option );

		if( $canDo->get('core.show.giftcards') ) {
			JHtmlSidebar::addEntry(
				JText::_('GiftCards'),
				'index.php?option=' . $option . '&view=gifts',
				$vName == 'gifts'
			);
		}

		if( $canDo->get('core.show.groups') ){
			JHtmlSidebar::addEntry(
				JText::_('Categories'),
				'index.php?option='.$option.'&view=groups',
				$vName == 'groups'
			);
		}

		if( $canDo->get('core.show.giftcards') ){
			JHtmlSidebar::addEntry(
				JText::_('Gallery'),
				'index.php?option='.$option.'&view=galereas',
				$vName == 'galereas'
			);
		}
	}

}
