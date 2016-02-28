<?php

defined('_JEXEC') or die;

$app = JFactory::getApplication();

// Add JavaScript Frameworks
JHtml::_('bootstrap.framework');

require_once JPATH_ADMINISTRATOR . '/components/com_users/helpers/users.php';

$twofactormethods = UsersHelper::getTwoFactorMethods();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<jdoc:include type="head" />
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/gift/css/offline.css" type="text/css" />
	<link rel="shortcut icon" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/icon/favicon.ico" />
</head>
<body>
<jdoc:include type="message" />

	<div class="container">
		<img width="600" src="images/offline-avatar.png" />
	<div>

	<?php /* ?>
		<form action="<?php echo JRoute::_('index.php', true); ?>" method="post" id="form-login">
		<fieldset class="input">
			<p id="form-login-username">
				<label for="username"><?php echo JText::_('JGLOBAL_USERNAME'); ?></label>
				<input name="username" id="username" type="text" class="inputbox" alt="<?php echo JText::_('JGLOBAL_USERNAME'); ?>" size="18" />
			</p>
			<p id="form-login-password">
				<label for="passwd"><?php echo JText::_('JGLOBAL_PASSWORD'); ?></label>
				<input type="password" name="password" class="inputbox" size="18" alt="<?php echo JText::_('JGLOBAL_PASSWORD'); ?>" id="passwd" />
			</p>
			<?php if (count($twofactormethods) > 1) : ?>
				<p id="form-login-secretkey">
					<label for="secretkey"><?php echo JText::_('JGLOBAL_SECRETKEY'); ?></label>
					<input type="text" name="secretkey" class="inputbox" size="18" alt="<?php echo JText::_('JGLOBAL_SECRETKEY'); ?>" id="secretkey" />
				</p>
			<?php endif; ?>
			<p id="submit-buton">
				<label>&nbsp;</label>
				<input type="submit" name="Submit" class="button login" value="<?php echo JText::_('JLOGIN'); ?>" />
			</p>
			<input type="hidden" name="option" value="com_users" />
			<input type="hidden" name="task" value="user.login" />
			<input type="hidden" name="return" value="<?php echo base64_encode(JUri::base()); ?>" />
			<?php echo JHtml::_('form.token'); ?>
		</fieldset>
		</form>
	<?php */ ?>


</body>
</html>
