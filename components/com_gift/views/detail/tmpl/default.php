<?php defined('_JEXEC') or die; ?>

<form  name="giftForm" id="giftForm" novalidate>

<div class="left" style="background-image: url("<?php echo $this->gift->big_image ?>");">
    <img src="<?php echo $this->gift->big_image ?>" style="height: 100%; display: none;" >
    <div class="buy-div">
        <input type="text" ng-model="amount" name="amount" class="amount-input"  value="" required>
        <div class="clear"></div>

        <a href="javascript:void(0)" class="myButton" ng-disabled="!giftForm.$valid" >შეძენა</a>

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



    <div class="user-form"
         ng-init="setFullDate( <?php echo $this->today['mday'] ?>, '<?php echo $this->today['month'] ?>', <?php echo $this->today['year'] ?>, <?php echo $this->today['hours'] ?> )"
    >

        <div class="top">


            <div class="field">

                <div class="choose">
                    <span ng-show="destination == 1">მობილურზე</span>
                    <span ng-show="destination == 2">ელ-ფოსტაზე</span>
                    <span ng-show="destination == 3">მობილურზე და ელ-ფოსტაზე</span>
                    <span ng-show="destination == 0">აირჩიე სად გავუგზავნო eGiftcard?</span>

                    <div class="icon"></div>

                    <div class="dropdown" style="display: none;">
                        <p ng-click="setDestination(1)"><span>მობილურზე</span></p>
                        <p ng-click="setDestination(2)"><span>ელ-ფოსტაზე</span></p>
                        <p ng-click="setDestination(3)"><span>მობილურზე და ელ-ფოსტაზე</span></p>
                    </div>



                </div>


            </div>


            <div class="field">
                <input
                        name="mobile"
                        ng-model="mobile"
                        ng-required="( !mobile && !email )"
                        ng-show="destination == 1 || destination == 3"
                        type="text" class="mobile" placeholder="მობილური"
                        maxlength="9"
                >
                <div class="tooltip">
                    საჩუქარი მიმღებს მიუვა მობილურის ნომერზე
                </div>
            </div>


            <div class="field">
                <input name="email"
                       ng-model="email"
                       ng-required="( !mobile && !email )"
                       ng-show="destination == 2 || destination == 3"
                       type="text" class="email" placeholder="ელ-ფოსტა">
                <div class="tooltip">
                    საჩუქარი მიმღებს მიუვა ელ-ფოსტაზე
                </div>
            </div>


            <p class="notice-receive-date" ng-show="destination > 0">შეტყობინების მისვლის თარიღი</p>

            <div class="date" ng-show="destination > 0">

                <div class="d">
                    <span>{{d}}</span>
                    <div class="dropdown" style="display: none;">
                        <?php for( $i = 1; $i <= 31; $i++ ): ?>
                            <p ng-click="setDate(<?php echo $i ?>)"><span><?php echo $i ?></span></p>
                        <?php endfor; ?>
                    </div>

                </div>

                <div class="m">
                    <span>{{m}}</span>
                    <div class="dropdown" style="display: none;">
                        <?php foreach( $this->months as $month ): ?>
                            <p ng-click="setMonth('<?php echo $month ?>')"><?php echo $month ?></p>
                        <?php endforeach; ?>
                    </div>

                </div>

                <div class="y">
                    <span>{{y}}</span>
                    <div class="dropdown" style="display: none;">

                        <?php foreach( $this->years as $year ): ?>
                        <p ng-click="setYear(<?php echo $year ?>)"><span><?php echo $year ?></span></p>
                        <?php endforeach; ?>



                    </div>
                </div>

                <div class="time">

                    <div class="h">
                        <span>{{h}}</span>
                        <div class="dropdown" style="display: none;">
                            <?php for( $i = 1; $i <= 24; $i++ ): ?>
                                <p ng-click="setHour(<?php echo $i ?>)"><?php echo $i ?></p>
                            <?php endfor; ?>
                        </div>
                    </div>



                    <input type="text" value="00" ng-model="mm" maxlength="2">
                </div>

            </div>



            <div class="field">
                <input type="text" name="sender_fullname" ng-model="sender_fullname" class="sender_fullname" placeholder="თქვენი სახელი და გვარი">
                <div class="tooltip">
                    ელექტრონულ სასაჩუქრე ბარათზე ბარათზე იქნება მითეთებული თქვენი სახელი და გვარი როგორ გამგზავნი
                </div>
            </div>

            <div class="field">
                <input type="text" name="sender_email" ng-model="sender_email" class="sender_email" placeholder="თქვენი ელ-ფოსტა">
                <div class="tooltip">
                    ელ-ფოსტაზე გამოგეგზავნებათ ვაუჩერის შეძენის დასტური და ასევე თქვენს მიერ შეძენული ვაუჩერი
                </div>
            </div>

            <textarea placeholder="დამატებითი ტექსტი" style=" height: 80px; width: 282px;" ng-model="text"></textarea>



        </div>

        <div class="bottom">



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
                            <p ng-show="sender_fullname.length > 0"><b>გამგზავნი</b>: {{sender_fullname}}</p>
                        </div>

                        <div class="gift-left gift-amount" ng-class="{ 'no-additional-text' : text.length == 0 }">
                           <p>{{amount | currency: ""}}<img height="30px;" src="images/currency-red.png"></p>
                        </div>



                        <div class="gift-left gift-text" ng-class="{ 'gift-text-center' : ( text.length < 71 && text.length > 0 ) }">

                            <p ng-show="text.length == 0" align="center" >დამატებით ტექსტი არ არის მითითებული</p>
                            <p ng-show="text.length > 0">{{text}}</p>

                        </div>


                        <div class="receive-date">
                            {{d}} {{m}} {{y}} {{h}} სთ.
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



