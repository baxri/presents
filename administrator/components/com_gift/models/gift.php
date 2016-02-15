<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_contact
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\Registry\Registry;
use Joomla\Utilities\ArrayHelper;

JLoader::register('ContactHelper', JPATH_ADMINISTRATOR . '/components/com_contact/helpers/contact.php');

class GiftModelGift extends JModelAdmin
{
	public function getTable($type = '', $prefix = '', $config = array())
	{
		$option = JRequest::getVar('option');
		$clearName = substr( $option, 4 );
		$prefix = ucfirst( $clearName ).'Table';
		$type = str_replace( ucfirst($clearName).'Model', '', get_class() );
		$table = JTable::getInstance($type, $prefix, $config);;
		return $table;
	}

	public function getForm($data = array(), $loadData = true)
	{
		$option = JRequest::getVar('option');
		$clearName = substr( $option, 4 );
		$type = str_replace( ucfirst($clearName).'Model', '', get_class() );

		$option = JRequest::getVar('option');
		JForm::addFieldPath('JPATH_ADMINISTRATOR/components/'.$option.'/models/fields');

		$form = $this->loadForm( $option.'.'.strtolower($type), strtolower($type), array('control' => 'jform', 'load_data' => $loadData));

		if (empty($form))
		{
			return false;
		}

		return $form;
	}

	protected function loadFormData()
	{
		$option = JRequest::getVar('option');
		$clearName = substr( $option, 4 );
		$type = str_replace( ucfirst($clearName).'Model', '', get_class() );

		$app = JFactory::getApplication();
		$data = $app->getUserState($option.'.edit.'.strtolower($type).'.data', array());

		if (empty($data))
		{
			$data = $this->getItem();

			if ($this->getState('contact.id') == 0)
			{
				$data->set('catid', $app->input->get('catid', $app->getUserState($option.'.'.strtolower($type).'.filter.category_id'), 'int'));
			}
		}

		$this->preprocessData($option.'.'.strtolower($type).'', $data);
		return $data;
	}

}
