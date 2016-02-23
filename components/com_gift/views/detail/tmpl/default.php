<?php defined('_JEXEC') or die; ?>

<form  name="giftForm" novalidate>

<div class="left" style="background-image: url("<?php echo $this->gift->big_image ?>");">
    <img src="<?php echo $this->gift->big_image ?>" style="height: 100%; display: none;" >
    <div class="buy-div">
        <input type="text" ng-model="amount" name="amount" class="amount-input"  value="">
        <div class="clear"></div>

        <a href="#" class="myButton"
                ng-disabled="validateGift()"
            >შეძენა</a>


        <div class="clear"></div>

        <div class="info">
            <p>
                <a target="_blank" href="http://<?php echo $this->gift->website ?>" class=""><?php echo $this->gift->website ?></a>
            </p>

            <p>
                <a target="_blank" href="http://<?php echo $this->gift->fb_address ?>" class=""><?php echo $this->gift->fb_address ?></a>
            </p>

            <p>
                <span><?php echo $this->gift->hot_line ?></span>
            </p>

        </div>


    </div>

</div>

<div class="after" >

    <div class="user-form">

    <span>
        <input type="text" ng-model="mobile" name="mobile" placeholder="მიმღების მობილური" class="">
    </span>

    <span>
        <input type="text" ng-model="email" name="email" placeholder="მიმღების ელ-ფოსტა" class="">
    </span>

    <span>
        <input type="text" ng-model="sender" name="sender" placeholder="გამგზავნი">
    </span>

    <span>
        <textarea ng-model="text" name="text" placeholder="დამატებით ტექსტი"></textarea>
    </span>

    </div>

</div>


    <div class="confirm-window" style="display: none;">

        <div class="content">

            <div class="content-warning">
                <div class="notice-icon"></div>
                <div style="margin-left: 15px;">ყურადღებით გაადამოწმეთ შეყვანილი მონაცემების სიზუსტე!</div>
            </div>

            <div class="rows top">

                <div class="email-prev">



                    <div class="gift-email-preview">

                        <div class="gift-left">
                            <p><b>მაღაზია / ობიექტი</b>: <?php echo $this->gift->name ?></p>
                            <p ng-show="mobile.length > 0"><b>მიმღების მობილური</b>: {{mobile}}</p>
                            <p ng-show="email.length > 0"><b>მიმღების ელ-ფოსტა</b>: {{email}}</p>
                            <p ng-show="sender.length > 0"><b>გამგზავნის ელ-ფოსტა</b>: {{sender}}</p>
                        </div>

                        <div class="gift-left gift-amount" ng-class="{ 'no-additional-text' : text.length == 0 }">
                           <p>{{amount | currency: ""}}<img height="30px;" src="images/currency-red.png"></p>
                        </div>



                        <div class="gift-left gift-text" ng-class="{ 'gift-text-center' : ( text.length < 71 && text.length > 0 ) }">

                            <p ng-show="text.length == 0" align="center" >დამატებით ტექსტი არ არის მითითებული</p>
                            <p ng-show="text.length > 0">{{text}}</p>


                        </div>

                    </div>

                </div>

                <div class="mobile-prev">


                    <img class="gift-avatar" height="100" width="100" style="border-radius: 100px; background-image: url('<?php echo $this->gift->list_image ?>')">

                    <h2><?php echo $this->gift->name ?></h2>

                    <p><?php echo $this->gift->hot_line ?></p>

                    <?php /* ?>
                    <div>




                        მაღაზია / ობიექტი: <?php echo $this->gift->name ?>
                        <br /> <br />
                        {{amount}} ლარიანი ვაუჩერი

                       <span ng-show="text.length > 0">
                           <br /> <br />
                           {{text}}
                       </span>


                        <br /> <br />
                        გამომგზავნი: {{sender}}
                    </div>



                    <div class="answer">
                       :)
                    </div>
 <?php */ ?>
                </div>

            </div>

            <div class="rows bottom">
                <button class="close close-window" style="background-color: #4D4D4D;"><span>გაუქმება</span><span class="yes"></span></button>
                <button class="buy" style="background-color: #BA0000;"><span>შეძენა</span><span class="yes"></span></button>
            </div>

        </div>

    </div>

</form>



