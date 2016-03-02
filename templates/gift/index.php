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

        <div class="header-container">
            <div>
                <a href="index.php"class="logo">
                    <img src="images/logo.png" alt="" height="80">
                </a>
            </div>

            <?php /* ?>
            <div class="slogan">
                <p>შეიძინე სხვადასხვა ბრენდის სასაჩუქრე ბარათები ონლაინ!</p>
            </div>
             <?php */ ?>

            <jdoc:include type="modules" name="categories" />
        </div>

        <div class="header-bottom">
            <div class="header-container">

            </div>
        </div>

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
                    <p>+995 (558) 24 44 88</p>
                </div>

                <div class="right">
                    ჩვენი ვებ გვერდის ( wwwsiurpriz.ge ) მეშვეობით თქვენ შეგიძლიათ ონლაინ რეჟიმში შეარჩიოთ სასურველი ბრენდის ან მაღაზიის სასაჩუქრე ბარათი (eGiftCard) და გაუგზავნოთ სასურველ ადრესატს ელექტრონული ან ფიზიკური ფორმით
                    საიტზე არ არის საჭირო რეგისტრაციის გავლა. ამიტომ აუცილებელია გადახდისას აუცილელად მიუთითოთ თქვენი ელ-ფოსტის მისამართი სადაც გადმოგეგზავნებათ დასტური გადახდის შესახებ და ლინკი ვაუჩერზე გადასასვლელად.
                    ვაუჩერის შეძენა შეძენა ხორციელდება  ქართული Visa ან MasterCard პლასტიკური ბარათების საშუალებით
                </div>

            </div>
            <div class="footer-container footer-container3">

                <div class="left">
                    SIURPRIZ.GE
                </div>

                <div class="right">
                    ყველა უფლება დაცულია © 2016
                </div>

            </div>
        </footer>

    <?php endif; ?>

</body>
</html>