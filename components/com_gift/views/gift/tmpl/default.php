<?php defined('_JEXEC') or die; ?>
<div id="gift-container" class="gift-container">
    <div class="gift-container-inner clear">
        <?php foreach( $this->gifts as $gift ): ?>
            <div class="giftItem">
                <div class="poster" >
                    <div class="giftPopup">
                        <a href="<?php echo $gift->category ?>/<?php echo $gift->alias ?>">
                        <div>შეძენა</div>
                            </a>
                     </div>
                    <?php if( !empty( $gift->list_image ) ): ?>
                        <img src="<?php echo $gift->list_image ?>" width="230" height="340">
                    <?php endif; ?>
                </div>
                <h2><a href="<?php echo $gift->category ?>/<?php echo $gift->alias ?>"><?php echo $gift->name ?></a></h2>
            </div>
        <?php endforeach; ?>
    </div>
</div>