<?php


defined('_JEXEC') or die;


class GiftViewGalereas extends JViewLegacy
{
	protected $items;
	protected $pagination;
	protected $state;
	public $filterForm;
	public $activeFilters;
	protected $sidebar;


	public function display($tpl = null)
	{
		$this->option = JRequest::getVar('option');
		$this->clearName = substr( $this->option, 4 );

		$this->view = str_replace( ucfirst($this->clearName).'View', '', get_class() );
		$this->edit_view = strtolower( substr( $this->view, 0, strlen( $this->view ) - 1  ) );

		$this->items      = $this->get('Items');



		$this->pagination = $this->get('Pagination');
		$this->state      = $this->get('State');
		$this->filterForm    = $this->get('FilterForm');
		$this->activeFilters = $this->get('ActiveFilters');

		ComponentHelper::addSubmenu( $this->clearName );

		if (count($errors = $this->get('Errors')))
		{
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		foreach ($this->items as &$item)
		{
			$item->order_up = true;
			$item->order_dn = true;
		}

		$this->addToolbar();
		$this->sidebar = JHtmlSidebar::render();

		return parent::display($tpl);
	}

	protected function addToolbar()
	{
		$canDo = JHelperContent::getActions( $this->option, $this->edit_view, $this->state->get('filter.category_id'));
		$user  = JFactory::getUser();

		JToolbarHelper::title( ucfirst( $this->view ), 'address contact');

		if ($canDo->get('core.create') || (count($user->getAuthorisedCategories($this->option, 'core.create'))) > 0)
		{
			JToolbarHelper::addNew($this->edit_view.'.add');
		}

		if (($canDo->get('core.edit')) || ($canDo->get('core.edit.own')))
		{
			JToolbarHelper::editList($this->edit_view.'.edit');
		}

		if ($canDo->get('core.edit.state'))
		{
			JToolbarHelper::publish($this->view.'.publish', 'JTOOLBAR_PUBLISH', true);
			JToolbarHelper::unpublish($this->view.'.unpublish', 'JTOOLBAR_UNPUBLISH', true);
		}

		if ($user->authorise('core.create', $this->option)
			&& $user->authorise('core.edit', $this->option)
			&& $user->authorise('core.edit.state', $this->option))
		{
			$title = JText::_('JTOOLBAR_BATCH');
			$layout = new JLayoutFile('joomla.toolbar.batch');
			$dhtml = $layout->render(array('title' => $title));
		}

		if ($this->state->get('filter.published') == -2 && $canDo->get('core.delete'))
		{
			JToolbarHelper::deleteList('', $this->view.'.delete', 'JTOOLBAR_EMPTY_TRASH');
		}
		elseif ($canDo->get('core.edit.state'))
		{
			JToolbarHelper::deleteList($this->option, $this->view.'.delete', 'Delete');
		}

		if ($user->authorise('core.admin', $this->option) || $user->authorise('core.options', $this->option))
		{
			JToolbarHelper::preferences($this->option);
		}

		JHtmlSidebar::setAction('index.php?option='.$this->option);
	}



}
