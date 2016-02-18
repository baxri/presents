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
        <a href="http://www.cinemax.ge:80/"class="logo">
            <img src="http://www.cinemax.ge:80/templates/cinemax/images/cinemax.svg" alt="Siurpriz.ge">
        </a>

        <div class="categories">
            <button class="categories-button"><span class="">კატეგორიები</span></button>
        </div>

        <div class="categories-block" style="display: none;">
            <ul>
                <li>
                    <a href="javascript:void(0)">
                        <img src="http://www.cinemax.ge:80/templates/cinemax/images/large_cinema_002.svg" alt="" width="100" height="100">
                        <div class="clear"></div>
                        <span>რუსთაველი</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <img src="http://www.cinemax.ge:80/templates/cinemax/images/large_cinema_002.svg" alt="" width="100" height="100">
                        <div class="clear"></div>
                        <span>რუსთაველი</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <img src="http://www.cinemax.ge:80/templates/cinemax/images/large_cinema_002.svg" alt="" width="100" height="100">
                        <div class="clear"></div>
                        <span>რუსთაველი</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <img src="http://www.cinemax.ge:80/templates/cinemax/images/large_cinema_002.svg" alt="" width="100" height="100">
                        <div class="clear"></div>
                        <span>რუსთაველი</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <img src="http://www.cinemax.ge:80/templates/cinemax/images/large_cinema_002.svg" alt="" width="100" height="100">
                        <div class="clear"></div>
                        <span>რუსთაველი</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:void(0)">
                        <img src="http://www.cinemax.ge:80/templates/cinemax/images/large_cinema_002.svg" alt="" width="100" height="100">
                        <div class="clear"></div>
                        <span>რუსთაველი</span>
                    </a>
                </li>

            </ul>
        </div>

    </div>

    <!-- CENTER CONTENT -->
    <div id="container">


    </div>
    <!--CLEAR FOOTER TO PREVENT BUNCHING-->
    <div class="clear"></div>
    <div id="footer"><p>HEY HERE IS MY FULL WIDTH FOOTER</p></div>
</body>
</html>