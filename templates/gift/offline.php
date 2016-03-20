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

	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/header.css" type="text/css" />

	<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/lib/jquery-1.11.3.min.js"></script>
	<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/custom.js"></script>

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

<div id="headerbg" class="header">

	<div class="header-top">
		<div class="header-container">
			<div>
				<a href="index.php"class="logo">
					<img src="images/logo.png" alt="" height="70">
				</a>
			</div>

			<?php /* ?>
                    <jdoc:include type="modules" name="categories" />
                <?php */ ?>
		</div>
	</div>


	<div class="header-bottom">
		<div class="header-container">

			<div class="header-menu">

			</div>

			<div class="header-fb-pugins">
				<div class="fb-like fb-like-custom" data-href="https://www.facebook.com/siurprizge-1000968356632423/" data-layout="button_count" data-action="like" data-show-faces="true" data-share="false"></div>
				<div class="with-lowe">
					<span></span>
					<span class="heart"></span>
					<span>-ით</span>
				</div>

			</div>

		</div>
	</div>

</div>

<div class="list-banner-bg banner" style="background-image: url('images/offline-bg.png');">
	<img src="images/offline-bg.png" style="width: 110%; display: none;" />
	<div>
		<div class="gift-container list-banner">
			<div class="right-big-text">SIURPRIZ.GE</div>
			<div class="right-medium-text">ვმუშაობთ რაღაც საინტერესოზე</div>
			<div class="clear"></div>
			<div class="banner-with-love">
				<span>მოიწონე</span>
				<span class="big-love"></span>
				<span>-ით</span>
			</div>
		</div>
	</div>

</div>




<?php /* ?>
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

	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-74420440-1', 'auto');
		ga('send', 'pageview');

	</script>

<?php */ ?>






</body>
</html>
