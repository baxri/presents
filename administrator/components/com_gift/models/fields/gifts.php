<?php
defined('JPATH_BASE') or die;

JFormHelper::loadFieldClass('list');

class JFormFieldGifts extends JFormFieldList
{
	protected $type = 'gifts';

	public function getOptions()
	{
		$result = $this->loadGroups();
		$new = new stdClass();
		$new->value = '';
		$new->text = JText::_('Gifts');

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
						->from( '#__gifcards' )
							->where('published = 1')->order('name ASC');
		$db->setQuery( $query );
		$result = $db->loadObjectList();
		return $result;
	}
}
