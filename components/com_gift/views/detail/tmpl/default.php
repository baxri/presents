<?php defined('_JEXEC') or die; ?>

<form  name="giftForm" id="giftForm" action="<?php echo JUri::root().'toPay' ?>" method="post" novalidate>

    <div class="details">

        <div class="banner" style="background-image: url('<?php echo $this->gift->big_image ?>');">
        <img src="<?php echo $this->gift->big_image ?>" style="width: 110%; display: none;" />

            <div  class="container inner-banner">

                <div class="left">
                    <h1><?php echo $this->gift->name ?></h1>
                    <p>საუკეთესო საჩუქარი საყვარელი ადამიანისთვის</p>
                </div>
                <div class="right">
                    <p>გაუგზავნე <?php echo $this->gift->name ?> -ის სასაჩუქრე ვაუჩერი </p>
                    <button>აჩუქე</button>
                    <div class="fb-share-button" data-href="http://siurpriz.ge/home" data-layout="button"></div>
                </div>

            </div>

            <div class="banner-gradient"></div>

        </div>

        <div class="button-row" style="height: 100px; background: white;">

            <div  class="container" style="height: 100px;">
                <a data-container="brand-info" href="javascript:void(0)" class="first active big-tab">ინფორმაცია ბრენდზე</a>
                <a data-container="brand-galery" href="javascript:void(0)" class="big-tab">გალერეა და პროდუქცია</a>
            </div>

        </div>

        <div class="gift-container details-container">

            <div id="brand-info" class="brand-conrainer">

                <div class="left">
                    <?php if( !empty( $this->gift->description ) ): ?>
                        <?php echo $this->gift->description; ?>
                    <?php else: ?>
                        ინფორმაცია არ არის წარმოდგენილი
                    <?php endif; ?>
                </div>

                <div class="right">
                    <p>საკონტაქტო ინფომაცია</p>
                    <a href="javascript:void(0)" style="background-color: #E6E6E6; color: gray;"><?php echo $this->gift->hot_line ?></a>
                    <a target="_blank" href="<?php echo $this->gift->website ?>" style="background-color: #CCCCCC; color: white;">Web Site</a>
                    <a target="_blank" href="<?php echo $this->gift->fb_address ?>" style="background-color: #003399; color: white;">Facebook</a>

                </div>

            </div>

            <div id="brand-galery" class="brand-conrainer" style="display: none;">
                გასაკეთებელია გალერეაააა
            </div>

        </div>



    </div>




</form>



