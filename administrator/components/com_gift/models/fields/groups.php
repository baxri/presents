<?php
defined('JPATH_BASE') or die;

JFormHelper::loadFieldClass('list');

class JFormFieldGroups extends JFormFieldList
{
	protected $type = 'groups';

	public function getOptions()
	{
		$result = $this->loadGroups();
		$new = new stdClass();
		$new->value = '';
		$new->text = JText::_('Category');

		$header = array(
			$new
		);

		$result = array_merge( $header, $result );
		return $result;
	}

	private function loadGroups(){
		$db = JFactory::getDBO();
		$query = $db->getQuery(true);
		$query->select('
					id as value,
					name as text')
						->from( '#__groups' )
							->where('published = 1')->order('name ASC');
		$db->setQuery( $query );
		$result = $db->loadObjectList();
		return $result;
	}
}
