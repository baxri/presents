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

    <script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template; ?>/js/custom.js"></script>

</head>
<body>
    <!-- background for expandable header -->
    <div id="headerbg" class="header">
        <a href="index.php"class="logo">
            <img src="images/logo.png_" alt="" height="80">
        </a>

        <div class="categories ">
            <button class="categories-button"><span class="">კატეგორიები</span></button>
        </div>
    </div>



    <div class="categories-block" style="display: none;">
        <ul>
            <li>
                <a href="javascript:void(0)">
                    <img src="images/foods.png" alt="" width="100" height="100">
                    <div class="clear"></div>
                    <span>კვება</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)">
                    <img src="images/technic.png" alt="" width="100" height="100">
                    <div class="clear"></div>
                    <span>ტექნიკა</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)">
                    <img src="images/cloth.png" alt="" width="100" height="100">
                    <div class="clear"></div>
                    <span>ტანსაცმელი</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)">
                    <img src="images/beauty.png" alt="" width="100" height="100">
                    <div class="clear"></div>
                    <span>პარფიუმერია</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)">
                    <img src="images/foods.png" alt="" width="100" height="100">
                    <div class="clear"></div>
                    <span>კვება</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0)">
                    <img src="images/cloth.png" alt="" width="100" height="100">
                    <div class="clear"></div>
                    <span>ტანსაცმელი</span>
                </a>
            </li>

        </ul>
    </div>







    <!-- CENTER CONTENT -->
    <div id="container" class="container">



        <div class="giftItem">
            <div class="poster startTrailer" data-trailer="https://www.youtube.com/watch?v=vUFZOO9zO0Q">

                <div class="giftPopup">
                    ტრეილერი
                </div>
                <img src="https://cinerp.com:9000/media/movies/posters/images/zoolander.jpg">
            </div>
            <h2><a href="http://www.cinemax.ge:80/movie/56ab1c70956167e76fa7f6f6/" class="ng-binding">MOVIE</a></h2>
        </div>




    </div>

    <!--CLEAR FOOTER TO PREVENT BUNCHING-->
    <div class="clear"></div>

    <div id="footer"><p>HEY HERE IS MY FULL WIDTH FOOTER</p></div>
</body>
</html>