<?php defined('_JEXEC') or die; ?>

<form  name="giftForm" id="giftForm" action="<?php echo JUri::root().'toPay' ?>" method="post" novalidate>

<div class="process-background">
    <div class="process">

        <div class="process-header">
            <a href="javascript:void(0)"></a>
        </div>

        <div class="process-step-progress">
            <div><span></span></div>
        </div>

        <div class="process-body">
            <div class="step active step-1">
                <div></div>
                <p>რამდენ ლარიანი სასაჩუქრე ბარათი გსურთ რომ აჩუქოთ?</p>

                <?php if( empty( $this->amounts ) ): ?>
                    <input type="text" placeholder="შეიყვანეთ სასურველი თანხა" ng-model="amount" name="amount" id="amount" >
                <?php else: ?>
                    <select style="padding-left: 20px; width: 180px; height: 40px; color: gray;" ng-model="amount" name="amount" id="amount" >
                        <option value=""> აირჩიეთ თანხა </option>
                        <?php foreach( $this->amounts as $amount ): ?>
                            <option value="<?php echo $amount ?>"><?php echo $amount ?> ლარი</option>
                        <?php endforeach; ?>
                    </select>
                <?php endif; ?>


            </div>
            <div class="step step-2">
                <div class="image"></div>
                <p>მიუთითეთ სადაც გსურთ რომ გაუგზავნოთ სასაჩუქრე ვაუჩერი?</p>
                <div><input type="number" placeholder="მობილურზე" ng-model="mobile" name="mobile" min="0" id="mobile" ></div>
                <div><input type="text" placeholder="ელ-ფოსტაზე" ng-model="email" name="email" id="email" ></div>
            </div>

            <div class="step step-3"
                 ng-init="setFullDate( '<?php echo $this->today['mday'] ?>', '<?php echo $this->today['month'] ?>', '<?php echo $this->today['year'] ?>', '<?php echo $this->today['hours'] ?>' )"
            >

              <div class="image"></div>
                <p>როდის გსურთ რომ მიუვიდეს შეტყობინება ადრესატს?</p>
                <div class="selector">
                    <select style="width: 70px;" name="d"  ng-model="d" >
                        <?php for( $i = 1; $i <= 31; $i++ ): ?>
                            <option value="<?php echo $i ?>"><?php echo $i ?></option>
                        <?php endfor; ?>
                    </select>
                    <select style="width: 120px;" name="m" ng-model="m">
                        <?php foreach( $this->months as $month ): ?>
                            <option value="<?php echo $month ?>"><?php echo $month ?></option>
                        <?php endforeach; ?>
                    </select>
                    <select style="width: 80px;" name="y" ng-model="y">
                        <?php foreach( $this->years as $year ): ?>
                            <option value="<?php echo $year ?>"><?php echo $year ?></option>
                        <?php endforeach; ?>
                    </select>
                    <select style="width: 80px;" name="h"  ng-model="h" >
                        <?php for( $i = 1; $i <= 24; $i++ ): ?>
                            <option value="<?php echo $i ?>"><?php echo $i ?> სთ</option>
                        <?php endfor; ?>
                    </select>

                    <input type="hidden" value="{{mm}}" ng-model="mm" name="mm" maxlength="2">
                </div>

            </div>
            <div class="step step-4">
                <div class="left">
                    <input type="text" name="sender_fullname" ng-model="sender_fullname" name="sender_fullname" placeholder="ვისგან?">
                    <div class="clear"></div>
                    <textarea placeholder="შეიყვანეთ მილოცვის ტექსტი" ng-model="text" name="text">{{text}}</textarea>
                    <p style="color: gray;">სიმბოლოების მაქსიმალური რაოდენობა: {{maxLetters}} ( {{text.length}} )</p>
                    <div class="clear"></div>
                    <div class="image"></div>
                </div>
                <div class="right">
                    <div class="top">
                        <div class="card">
                            <div class="card-left">
                                <h2><?php echo $this->gift->name ?></h2>
                                <p style="line-height: 20px;"><?php echo $this->gift->slogan ?></p>
                                <h1>{{amount | currency: ""}} ლარი</h1>
                            </div>
                        </div>
                    </div>
                    <div class="center">
                        <div class="text">
                            <p ng-show="text.length > 0">{{ text | limitTo:maxLetters }}</p>
                            <p ng-show="text.length == 0" style="color: lightgrey;">დამატებითი ტექსტი არ არის მითითებული</p>
                            <div class="with-lowe">
                                <span ng-show="sender_fullname.length > 0">{{sender_fullname}} &nbsp;</span>
                                <span ng-show="sender_fullname.length == 0">ანონიმურად &nbsp;</span>
                                <span class="heart"></span>
                                <span>&nbsp;-ით</span>
                            </div>
                        </div>
                        <div class="bottom">
                            <div class="copyright">
                                SIURPRIZ.GE
                            </div>
                            <div class="logo">
                                ბრენდის ცხელი ხაზი: <?php echo $this->gift->hot_line ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="step step-5">

                <div class="right sides">
                    <div class="pay-methods">
                        <div class="pay-item active">
                            <span class="pay-select"></span>
                            <span class="pay pay-visa"></span>
                        </div>
                        <div class="pay-item" style="opacity: 0.4;">
                            <span class="pay-select"></span>
                            <span class="pay pay-amex"></span>
                        </div>
                        <div class="pay-item last" style="opacity: 0.4;">
                            <span class="pay-select"></span>
                            <span class="pay pay-nova"></span>
                        </div>
                    </div>



                </div>

                <div class="left sides">
                    <div class="info">
                        <p>მაღაზია/ობიექტი <?php echo $this->gift->name ?></p>
                        <p ng-if="mobile.length > 0">მიმღების მობილური: {{mobile}}</p>
                        <p ng-if="email.length > 0">მიმღების ელ-ფოსტა: {{email}}</p>
                        <p ng-if="amount.length > 0" style="font-weight: bold;">თანხა: {{amount | currency: ""}} ლარი</p>
                        <p ng-if="amount.length > 0" style="font-weight: bold;">სულ გადასახდელი: {{amount | currency: ""}} ლარი</p>
                    </div>

                    <div class="payer-info">
                       <input placeholder="თქვენი ელ-ფოსტა" ng-model="sender_mobile" name="sender_mobile" id="sender_mobile">
                       <input placeholder="თქვენი მობილური" ng-model="sender_email" name="sender_email" id="sender_email">

                        <a href="#">ვეთანხმები წესებსა და პირობებს</a>

                    </div>
                </div>

            </div>
        </div>

        <div class="process-footer">
            <button ng-click="prevStep()">უკან დაბრუნება</button>
            <button class="next" ng-click="nextStep()">გაგრძელება</button>
        </div>

    </div>
</div>


    <input type="hidden" name="deliver" ng-model="deliver" value="{{deliver}}">
    <input type="hidden" name="destination" ng-model="destination" value="{{destination}}" >
    <input type="hidden" name="gift_id" value="<?php echo $this->gift->id ?>"  >
</form>
