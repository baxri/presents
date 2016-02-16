<?php

defined('_JEXEC') or die;

class ComponentHelper extends JHelperContent
{
	public static function addSubmenu($vName)
	{
		$option = JRequest::getVar('option');

		JHtmlSidebar::addEntry(
			JText::_('GiftCards'),
			'index.php?option='.$option.'&view=gifts',
			$vName == 'gifts'
		);

		JHtmlSidebar::addEntry(
			JText::_('Categories'),
			'index.php?option='.$option.'&view=groups',
			$vName == 'groups'
		);
	}

}
