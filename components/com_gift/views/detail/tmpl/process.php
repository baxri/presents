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

            </div>
            <div class="step step-5">

            </div>
        </div>

        <div class="process-footer">
            <button ng-click="prevStep()">უკან დაბრუნება</button>
            <button ng-click="nextStep()">შემდეგი</button>
        </div>

    </div>
</div>

