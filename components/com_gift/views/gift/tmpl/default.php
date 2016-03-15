<?php defined('_JEXEC') or die; ?>


<div id="gift-container" class="gift-container">
    <div class="gift-container-inner clear">
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