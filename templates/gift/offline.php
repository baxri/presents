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

	<script>(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>

	<meta property="og:url"           content="http://www.siurpriz.ge" />
	<meta property="og:type"          content="website" />
	<meta property="og:title"         content="SIURPRIZ.GE" />
	<meta property="og:description"   content="რა არის SIURPRIZ.GE?... ამას ძალიან... ძალიან მალე შეიტყობთ :)" />
	<meta property="og:image"     	  content="http://www.siurpriz.ge/images/fb-share.png" />
	<meta property="og:image:width"   content="200"/>
	<meta property="og:image:height"  content="200"/>

</head>
<body>
<jdoc:include type="message" />

	<div class="container">
		<img width="300" src="images/offline-avatar.png" />
		<div class="panel">
			<div class="happy">

			</div>
			<div class="text">

				<div style="clear: both; margin: 20px; font-size: 11pt; display: table; margin: 0 auto; text-align: center;">

					<div>რა არის siurpriz.ge?... ამას ძალიან... ძალიან მალე შეიტყობთ :)</div>



					<div class="with-lowe" style="margin: 0 auto; width: 200px; margin-top: 20px; margin-bottom: 20px;">
						<span>მოიწონე და გააზირე</span>
						<span class="heart"></span>
						<span>-ით</span>
					</div>

				</div>

				<div class="fb-block">



					<div id="fb-root"></div>


					<div class="fb-like"
						 data-href="https://www.facebook.com/siurprizge-1000968356632423/"
						 data-layout="box_count"
						 data-action="like"
						 data-show-faces="true"
						 data-share="false"></div>


				</div>

			</div>
		</div>
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


	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-74420440-1', 'auto');
		ga('send', 'pageview');

	</script>


</body>
</html>
