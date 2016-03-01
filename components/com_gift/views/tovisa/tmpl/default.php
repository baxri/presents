<?php defined('_JEXEC') or die; ?>

<?php if( !empty( $this->order->id ) ): ?>
    <div>
       <a href="<?php echo JUri::root().'giftcard/'.$this->order->id ?>" >
           Back to Merchant
       </a>
    </div>
<?php endif; ?>




<?php exit; ?>