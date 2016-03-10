<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Include the component HTML helpers.
JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');

JHtml::_('behavior.formvalidator');

JFactory::getDocument()->addScriptDeclaration("
	Joomla.submitbutton = function(task)
	{
		if (task == '".$this->view.".cancel' || document.formvalidator.isValid(document.getElementById('level-form')))
		{
			Joomla.submitform(task, document.getElementById('level-form'));
		}
	};
");

?>

<form action="<?php echo JRoute::_('index.php?option='.$this->option.'&id=' . (int) $this->item->id); ?>" method="post" name="adminForm" id="level-form" class="form-validate form-horizontal">

	<table width="100%">
		<tr>
			<td valign="top" width="100">
				<fieldset>
					<legend><?php echo  ucfirst( $this->view ).' '.JText::_('Fieldset') ;?></legend>
					<?php foreach($this->form->getFieldset('left_fields') as $field): ?>
						<div class="control-group">
							<div class="control-label">
								<?php echo $field->label; ?>
							</div>
							<div class="controls">
								<?php echo $field->input; ?>
							</div>
						</div>
					<?php endforeach; ?>
				</fieldset>
			</td>
		</tr>
	</table>


	<input type="hidden" name="task" value="" />
	<?php echo JHtml::_('form.token'); ?>
</form>
