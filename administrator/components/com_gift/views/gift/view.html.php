<?php

defined('_JEXEC') or die;

class GiftViewGift extends JViewLegacy
{
	protected $form;
	protected $item;
	protected $state;

	public function display($tpl = null)
	{
		$this->option = JRequest::getVar('option');
		$this->clearName = substr( $this->option, 4 );

		$this->view = str_replace( ucfirst($this->clearName).'View', '', get_class() );

		$this->form  = $this->get('Form');
		$this->item  = $this->get('Item');
		$this->state = $this->get('State');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		if ($this->getLayout() == 'modal')
		{
			$this->form->setFieldAttribute('language', 'readonly', 'true');
			$this->form->setFieldAttribute('catid', 'readonly', 'true');
		}

		$this->addToolbar();

		return parent::display($tpl);
	}


	protected function addToolbar()
	{
		JFactory::getApplication()->input->set('hidemainmenu', true);

		$user       = JFactory::getUser();
		$userId     = $user->id;
		$isNew      = ($this->item->id == 0);

		JToolbarHelper::title($isNew ? JText::_('New '.ucfirst($this->view) ) : JText::_('Edit '.ucfirst($this->view)), 'address contact');
		if ($isNew)
		{
			if ($isNew && (count($user->getAuthorisedCategories($this->option, 'core.create')) > 0))
			{
				JToolbarHelper::apply($this->view.'.apply');
				JToolbarHelper::save($this->view.'.save');
			}

			JToolbarHelper::apply($this->view.'.apply');
			JToolbarHelper::save($this->view.'.save');
			JToolbarHelper::cancel($this->view.'.cancel');

		}
		else
		{
			JToolbarHelper::apply($this->view.'.apply');
			JToolbarHelper::save($this->view.'.save');
			JToolbarHelper::cancel($this->view.'.cancel', 'JTOOLBAR_CLOSE');
		}

	}
}
