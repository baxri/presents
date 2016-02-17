<?php
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
		}

		$this->preprocessData($option.'.'.strtolower($type).'', $data);
		return $data;
	}

	protected function getReorderConditions($table)
	{
		$condition = array();
		$condition[] = 'group_id = ' . (int) $table->group_id;
		return $condition;
	}

	protected function prepareTable($table)
	{
		if (empty($table->id))
		{
			if (empty($table->ordering))
			{
				$db = $this->getDbo();
				$query = $db->getQuery(true)
					->select('MAX(ordering)')
					->from( $table->getTableName() );

				$db->setQuery($query);
				$max = $db->loadResult();

				$table->ordering = $max + 1;
			}
		}
	}

}
