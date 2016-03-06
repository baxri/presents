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

    <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>

</head>
<body ng-app="gift" ng-controller="GiftController">

    <div id="headerbg" class="header">

        <div class="header-top">
            <div class="header-container">
                <div>
                    <a href="index.php"class="logo">
                        <img src="images/logo.png" alt="" height="70">
                    </a>
                </div>

                <?php /* ?>
            <div class="slogan">
                <p>შეიძინე სხვადასხვა ბრენდის სასაჩუქრე ბარათები ონლაინ!</p>
            </div>
             <?php */ ?>

                <jdoc:include type="modules" name="categories" />
            </div>
        </div>


        <div class="header-bottom">
            <div class="header-container">

                <div class="header-menu">
                    <jdoc:include type="modules" name="header_menu" />
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