<?php
defined('_JEXEC') or die;
JHtml::addIncludePath(JPATH_COMPONENT . '/helpers/html');

JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');

$app       = JFactory::getApplication();
$user      = JFactory::getUser();
$userId    = $user->get('id');
$listOrder = $this->escape($this->state->get('list.ordering'));
$listDirn  = $this->escape($this->state->get('list.direction'));

$saveOrder = $listOrder == 'a.ordering';

if ($saveOrder)
{
	$saveOrderingUrl = 'index.php?option='.$this->option.'&task='.strtolower( $this->view ).'.saveOrderAjax&tmpl=component';
	JHtml::_('sortablelist.sortable', 'ItemList', 'adminForm', strtolower($listDirn), $saveOrderingUrl);
}

?>


<form action="<?php echo JRoute::_('index.php?option='.$this->option.'&view='.$this->view); ?>" method="post" name="adminForm" id="adminForm">
<?php if (!empty($this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>
		<?php echo JLayoutHelper::render('joomla.searchtools.default', array('view' => $this)); ?>

		<div class="clearfix"> </div>
		<?php if (empty($this->items)) : ?>
			<div class="alert alert-no-items">
				<?php echo JText::_('JGLOBAL_NO_MATCHING_RESULTS'); ?>
			</div>
		<?php else : ?>
			<table class="table table-striped" id="ItemList">
				<thead>
					<tr>
						<th width="1%" class="nowrap center hidden-phone">
							<?php echo JHtml::_('searchtools.sort', '', 'a.ordering', $listDirn, $listOrder, null, 'asc', 'JGRID_HEADING_ORDERING', 'icon-menu-2'); ?>
							<?php //echo JHtml::_('grid.sort', '<i class="icon-menu-2"></i>', 'a.ordering', $listDirn, $listOrder, null, 'asc', 'JGRID_HEADING_ORDERING'); ?>
						</th>
						<th width="1%" class="nowrap hidden-phone">
							<?php echo JHtml::_('searchtools.sort', 'id', 'a.id', $listDirn, $listOrder); ?>
						</th>
						<th width="1%" class="center">
							<?php echo JHtml::_('grid.checkall'); ?>
						</th>
						<th width="20%" class="nowrap hidden-phone">
							<?php echo JHtml::_('searchtools.sort', 'name', 'a.name', $listDirn, $listOrder); ?>
						</th>
						<th width="20%" class="nowrap hidden-phone">
							<?php echo JText::_('Web Site'); ?>
						</th>
						<th width="20%" class="nowrap hidden-phone">
							<?php echo JText::_('Hot Line'); ?>
						</th>
						<th width="20%" class="nowrap hidden-phone">
							<?php echo JText::_('Currency'); ?>
						</th>
						<th width="20%" class="nowrap hidden-phone">
							<?php echo JText::_('Category'); ?>
						</th>
						<th width="1%" class="nowrap hidden-phone">
							<?php echo JText::_('Published'); ?>
						</th>
					</tr>
				</thead>
				<tbody>
				<?php
				$n = count($this->items);
				foreach ($this->items as $i => $item) :
					$ordering  = ($listOrder == 'ordering');

					?>
					<tr class="row<?php echo $i % 2; ?>" sortable-group-id="<?php echo $item->group_id?>">
						<td class="order nowrap center hidden-phone">
							<?php
							$iconClass = '';

							if (!$saveOrder)
							{
								$iconClass = ' inactive tip-top hasTooltip" title="' . JHtml::tooltipText('JORDERINGDISABLED');
							}
							?>
							<span class="sortable-handler <?php echo $iconClass ?>">
									<span class="icon-menu"></span>
								</span>
							<?php if ( $saveOrder ) : ?>
								<input type="text" style="display:none" name="order[]" size="5"
									   value="<?php echo $item->ordering; ?>" class="width-20 text-area-order " />
							<?php endif; ?>
						</td>
						<td class="hidden-phone">
							<?php echo $item->id; ?>
						</td>
						<td class="center">
								<?php echo JHtml::_('grid.id', $i, $item->id); ?>
						</td>
						<td class="hidden-phone">
							<a href="<?php  echo JRoute::_('index.php?option='.JRequest::getVar('option').'&task='.$this->edit_view.'.edit&id='.(int) $item->id); ?>">
							<?php echo $item->name; ?>
							</a>
						</td>
						<td class="hidden-phone">
							<?php echo $item->website; ?>
						</td>
						<td class="hidden-phone">
							<?php echo $item->hot_line; ?>
						</td>
						<td class="hidden-phone">
							<?php echo $item->currency; ?>
						</td>
						<td class="hidden-phone">
							<?php echo $item->category; ?>
						</td>
						<td class="hidden-phone">
							<?php echo JHtml::_('jgrid.published', $item->published, $i, $this->view.'.', TRUE); ?>
						</td>
					</tr>
					<?php endforeach; ?>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="10">
							<?php echo $this->pagination->getListFooter(); ?>
						</td>
					</tr>
				</tfoot>
			</table>
		<?php endif;?>

		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>
<?php
$document = JFactory::getDocument();
$document->addScriptDeclaration('
    jQuery(function () {
	  jQuery("[data-toggle=\"popover\"]").popover();
	});
');
?>