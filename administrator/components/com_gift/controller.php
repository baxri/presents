<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_contact
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * Component Controller
 *
 * @since  1.5
 */
class GiftController extends JControllerLegacy
{
	/**
	 * The default view.
	 *
	 * @var    string
	 * @since  1.6
	 */
	protected $default_view = 'tickets';

	public function __construct(array $config)
	{
		parent::__construct($config);

		$option = JRequest::getVar('option');
		$clearName = substr( $option, 4 );

		$this->default_view = $clearName.'s';
	}

	public function display($cachable = false, $urlparams = array())
	{
		require_once JPATH_COMPONENT . '/helpers/helper.php';

		$option = JRequest::getVar('option');
		$clearName = substr( $option, 4 );

		$view   = $this->input->get('view', $clearName.'s');
		$layout = $this->input->get('layout', 'default');
		$id     = $this->input->getInt('id');

		if ($view == $clearName && $layout == 'edit' && !$this->checkEditId( $option.'.edit.'.$clearName, $id))
		{
			$this->setError(JText::sprintf('JLIB_APPLICATION_ERROR_UNHELD_ID', $id));
			$this->setMessage($this->getError(), 'error');
			$this->setRedirect(JRoute::_('index.php?option='.$option.'&view='.$clearName.'s', false));
			return false;
		}

		return parent::display();
	}
}
