<?php defined('_JEXEC') or die; ?>

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
                <input type="text" placeholder="0.00" ng-model="amount" name="amount" >
            </div>
            <div class="step step-2">

                <div class="image"></div>
                <p>მიუთითეთ სადაც გსურთ რომ გაუგზავნოთ სასაჩუქრე ვაუჩერი?</p>
                <div><input type="text" placeholder="მობილურზე" ng-model="mobile" name="mobile" ></div>
                <div><input type="text" placeholder="ელ-ფოსტაზე" ng-model="email" name="email" ></div>

            </div>
            <div class="step step-3">
                <div class="image"></div>
                <p>როდის გსურთ რომ მიუვიდეს შეტყობინება ადრესატს?</p>
                <div class="selector">
                    <select style="width: 50px;">
                        <option>5</option>
                        <option>5</option>
                    </select>
                    <select style="width: 150px;">
                        <option>სექტემბერი</option>
                        <option>ოქტომბერი</option>
                    </select>
                    <select style="width: 50px;">
                        <option>12</option>
                        <option>12</option>
                    </select>
                </div>
            </div>
            <div class="step step-4">
                <div class="left">
                    <input type="text" name="sender_fullname" ng-model="sender_fullname" placeholder="ვისგან?">
                    <div class="clear"></div>
                    <textarea placeholder="შეიყვანეთ მილოცვის ტექსტი" ng-model="text"></textarea>
                    <div class="clear"></div>
                    <div class="image"></div>
                </div>
                <div class="right">
                    <div class="top">
                        <div class="card">
                            <div class="card-left">
                                <h2><?php echo $this->gift->name ?></h2>
                                <p>საუკეთესო საჩუქარი საყვარელი ადამიანისათვის</p>
                                <h1>{{amount | currency: ""}} ლარი</h1>
                            </div>
                        </div>
                    </div>
                    <div class="center">
                        <div class="text">
                            <p ng-show="text.length > 0">{{text}}</p>
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
                                ბერენდის ცხელი ხაზი: <?php echo $this->gift->hot_line ?>
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
                       <input name="" placeholder="თქვენი ელ-ფოსტა" ng-model="sender_mobile">
                       <input name="" placeholder="თქვენი მობილური" ng-model="sender_email">

                        <a href="#">ვეთანხმები წესებსა და პირობებს</a>

                    </div>
                </div>

            </div>
        </div>

        <div class="process-footer">
            <button ng-click="prevStep()">უკან დაბრუნება</button>
            <button class="next" ng-click="nextStep()">შემდეგი</button>
        </div>

    </div>
</div>

