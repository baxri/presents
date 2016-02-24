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



    <div class="user-form" >

        <div class="top">


            <div class="choose">
                <span>აირჩიე</span>
                <div class="dropdown" style="display: none;">
                    <p>გაუგზავნე მობილურზე</p>
                    <p>გაუგზავნე ელ-ფოსტაზე</p>
                    <p>გაუგზავნე მობილურზე და ელ-ფოსტაზე</p>
                </div>

            </div>

            <div>
                <input type="text" class="mobile" placeholder="მობილური">
                <input type="text" class="email" placeholder="ელ-ფოსტა">
            </div>


            <p class="notice-receive-date">შეტყობინების მისვლის თარიღი</p>

            <div class="date">
                <div class="d">
                    <span>8</span>
                    <div class="dropdown" style="display: none;">
                        <p>11</p>
                        <p>12</p>

                    </div>

                </div>

                <div class="m">
                    სექტემბერი

                    <div class="dropdown" style="display: none;">
                        <p>October</p>
                        <p>November</p>
                        <p>December</p>
                        <p>Januaery</p>
                        <p>March</p>
                    </div>

                </div>

                <div class="y">
                    2016
                    <div class="dropdown" style="display: none;">
                        <p>2016</p>
                    </div>
                </div>

                <div class="time">

                    <div class="h">
                        15
                        <div class="dropdown" style="display: none;">
                            <p>11</p>
                            <p>12</p>
                            <p>13</p>
                            <p>14</p>
                            <p>15</p>
                        </div>
                    </div>



                    <input type="text" value="00" maxlength="2">
                </div>


                <input type="text" class="sender_fullname" placeholder="თქვენი სახელი და გვარი">
                <input type="text" class="sender_email" placeholder="თქვენი ელ-ფოსტა">

                <textarea placeholder="დამატებითი ტექსტი" style="height: 80px; width: 282px;"></textarea>

            </div>


        </div>

        <div class="bottom">

            <div class="sender">

            </div>

        </div>

    <?php /* ?>
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

    <?php */ ?>

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



