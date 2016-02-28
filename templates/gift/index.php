<?php defined( '_JEXEC' ) or die( 'Restricted access' );?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>

    <jdoc:include type="head" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/header.css" type="text/css" />
    <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/css/template.css" type="text/css" />

    <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/lib/jquery-1.11.3.min.js"></script>
    <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/custom.js"></script>

    <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/lib/angular.js"></script>
    <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/app.js"></script>

    <link href='//fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/icon/favicon.ico" />

</head>
<body ng-app="gift" ng-controller="GiftController">

    <div id="headerbg" class="header">

        <div>
            <a href="index.php"class="logo">
                <img src="images/logo.png" alt="" height="80">
            </a>
        </div>

        <div class="slogan">
           <p>შეიძინე სხვადასხვა ბრენდის სასაჩუქრე ბარათები ონლაინ!</p>
        </div>

        <jdoc:include type="modules" name="categories" />

    </div>


    <jdoc:include type="message" />
    <jdoc:include type="component" />

    <div class="clear"></div>

    <footer class="footer">
        <div class="footer-container">
            <jdoc:include type="modules" name="footer_menu" />
        </div>
    </footer>


</body>
</html>