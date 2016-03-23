<?php defined('_JEXEC') or die; ?>


<div class="list-banner-bg banner" style="background-image: url('images/list-banner-bg.png');">
    <img src="images/list-banner-bg.png" style="width: 110%; display: none;" />
    <div>
        <div class="gift-container list-banner">
            <div class="right-big-text">SIURPRIZ.GE</div>
            <div class="right-medium-text">არ იცი რა აჩუქო საყვარელ ადამიანს? <br /> შემოდი ჩვენთან, აარჩიე სასურველი ბრენდი და გაუგზავნე მას სასაჩუქრე ბარათი</div>
            <div class="clear"></div>
            <div class="banner-with-love">
                <span>აჩუქე</span>
                <span class="big-love"></span>
                <span>-ით</span>
            </div>
        </div>
    </div>
    <div class="bottom-shadow"></div>
</div>



<div id="gift-container" class="gift-container">



    <div class="gift-container-inner clear">

        <p>აირჩიეთ ბრენდი</p>

        <?php foreach( $this->gifts as $gift ): ?>
            <div class="giftItem">
                <div class="poster" >
                    <a href="<?php echo $gift->category ?>/<?php echo $gift->alias ?>">
                        <div class="giftPopup">
                            <div class="inside">
                                <span class="send"></span>
                                <div>
                                    <span>აჩუქე</span>
                                    <span class="with-heart"></span>
                                    <span>- ით</span>
                                </div>
                            </div>
                        </div>
                    </a>
                    <?php if( !empty( $gift->list_image ) ): ?>
                        <img src="<?php echo $gift->list_image ?>" >
                    <?php endif; ?>
                </div>
                <h2><a href="<?php echo $gift->category ?>/<?php echo $gift->alias ?>"><?php echo $gift->name ?></a></h2>
            </div>
        <?php endforeach; ?>
    </div>
</div>