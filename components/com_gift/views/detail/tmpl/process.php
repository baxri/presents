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
                <p>სად გსურთ რომ გაუგზავნოთ სასაჩუქრე ვაუჩერი?</p>
                <div>
                    <span></span>
                    <input type="text" placeholder="მობილური" ng-model="mobile" name="mobile" >
                </div>
                <div>
                    <span></span>
                    <input type="text" placeholder="ელ-ფოსტა" ng-model="email" name="email" >
                </div>
            </div>
            <div class="step step-3">step-3</div>
            <div class="step step-4">step-4</div>
            <div class="step step-5">step-5</div>
        </div>

        <div class="process-footer">
            <button ng-click="prevStep()">უკან დაბრუნება</button>
            <button ng-click="nextStep()">შემდეგი</button>
        </div>

    </div>
</div>

