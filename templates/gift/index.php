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

        <?php  ?>
        <div class="slogan">
           <p>შეიძინე სხვადასხვა ბრენდის სასაჩუქრე ბარათები ონლაინ!</p>
        </div>
         <?php  ?>

        <jdoc:include type="modules" name="categories" />

    </div>


    <jdoc:include type="message" />
    <jdoc:include type="component" />


    <?php if ($this->countModules( 'footer_menu' )) : ?>
        <div class="clear"></div>
        <footer class="footer">
            <div class="footer-container">
                <jdoc:include type="modules" name="footer_menu" />
            </div>
        </footer>

        <footer class="footer footer2">
            <div class="footer-container footer-container2">

                <div class="left">
                    <span>მომხმარებლების ცხელი ხაზი</span>
                    <p>+995 (32) 242 20 42</p>
                </div>

                <div class="right">
                    Yep.ge არის ინდივიდუალური და ჯგუფური შესყიდვების ვებ-გვერდი, სადაც თქვენ შეგიძლიათ ნებისმიერ დროს მიიღოთ ფასდაკლება თქვენთვის სასურველ საქონელსა და მომსახურებაზე. yep.ge-ს მეშვეობით ყოველდღიურად მიიღებთ ექსკლუზიურ შემოთავაზებებს სხვადასხვა კომპანიებისგან წარმოუდგენლად დაბალ ფასად. აირჩიე საუკეთესო! დარეგისტრირდით და შეიძინეთ საჩუქრები თქვენთვის და თქვენი მეგობრებისთვის
                </div>

            </div>
            <div class="footer-container footer-container3">

                <div class="left">
                    SOMESITE.GE
                </div>

                <div class="right">
                    ყველა უფლება დაცულია © 2016
                </div>

            </div>
        </footer>

    <?php endif; ?>

</body>
</html>