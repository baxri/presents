<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_contact
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
JHtml::_('behavior.tabstate');

$option = JRequest::getVar('option');
$doc 		= JFActory::getDocument();

require_once JPATH_ADMINISTRATOR . DIRECTORY_SEPARATOR .'components' . DIRECTORY_SEPARATOR .$option. DIRECTORY_SEPARATOR . 'defines.php';

if (!JFactory::getUser()->authorise('core.manage', $option))
{
	return JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
}

$clearName = substr( $option, 4 );
$controller = JControllerLegacy::getInstance( $clearName );

$controller->execute(JFactory::getApplication()->input->get('task'));

$doc->addStyleSheet('components/' . $option . '/assets/style.css');
$doc->addScriptVersion('components/' . $option . '/assets/component.js');
$controller->redirect();
