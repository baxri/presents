
var app = angular.module('gift', []);

app.controller('GiftController', ['$scope', '$http', '$location', '$interval',  '$timeout', '$window', function ($scope, $http, $location, $interval, $timeout, $window) {

    $scope.destination = 1;
    $scope.amount = '';
    $scope.deliver = 0;

    $scope.mobile = '';
    $scope.email = '';

    $scope.sender_fullname = '';
    $scope.sender_mobile = '';
    $scope.sender_email = '';

    $scope.text = '';

    $scope.d = "";
    $scope.m = "";
    $scope.y = "";
    $scope.h = "";
    $scope.mm;

    $scope.setFullDate = function( d, m, y, h ){
        $scope.d = d;
        $scope.m = m;
        $scope.y = y;
        $scope.h = h;
    }

    $scope.setDestination = function( destination ){
        $scope.destination = destination;

        if( destination == 3 ){
            $scope.deliver = 5;
        }else{
            $scope.deliver = 0;
        }
    }

    $scope.setDate = function( date ){
        $scope.d = date;
    }

    $scope.setMonth = function( month ){
        $scope.m = month;
    }

    $scope.setHour = function( hour ){
        $scope.h = hour;
    }

    $scope.setYear = function( year ){
        $scope.y = year;
    }

    $scope.prepareFormData = function(){
        $scope.date = $scope.y + "-" + $scope.m + "-" + $scope.d + "|" + $scope.h + ":" + $scope.mm;
    }

    $scope.currentStep = 1;

    $scope.nextStep = function(){

        switch ( $scope.currentStep ){
            case 1:
                var valid = $scope.validateStep1();
                break;
            case 2:
                var valid = $scope.validateStep2();
                break;
            case 3:
                var valid = $scope.validateStep3();
                break;
            case 4:
                var valid = $scope.validateStep4();
                break;
            case 5:
                var valid = $scope.validateStep5();
                break;
        }

        if( !valid ){
            return false;
        }

        if( $scope.currentStep == 5 ){

            /*
             *
             * Go to checkout
             *
             * */

            $('#giftForm').submit();
            return false;
        }

        $( '.step-' + $scope.currentStep).fadeOut('fast', function(){
            $scope.currentStep = $scope.currentStep + 1;


            $('.process').animate({ backgroundColor: "orange" }, "slow");
            $( '.step-' + $scope.currentStep).fadeIn('fast');
            $scope.setProgress();

        });

    }


    $scope.prevStep = function(){

        if( $scope.currentStep == 1 ){
            return false;
        }

        $( '.step-' + $scope.currentStep).fadeOut('fast', function(){
            $scope.currentStep = $scope.currentStep - 1;
            $( '.step-' + $scope.currentStep).fadeIn('fast');
            $scope.setProgress();
        });

    }

    $scope.setProgress = function(){

        var width = 0;
        var step_count = 5;

        width = (100/step_count) * $scope.currentStep;

        $( '.process-step-progress div span' ).animate({
            width: width + '%'

        }, 500, function() {
            // Animation complete.
        });
    }

    /*
    * Validation functions
    *
    * */

    $scope.validateStep1 = function(){

        if( $('#amount').val().length == 0 ){
            return false;
        }

        return true;
    }

    $scope.validateStep2 = function(){
        if( $('#mobile').val().length == 0 && $('#email').val().length == 0 ){
            return false;
        }

        return true;
    }

    $scope.validateStep3 = function(){
        return true;
    }

    $scope.validateStep4 = function(){
        return true;
    }

    $scope.validateStep5 = function(){
        if( $('#sender_mobile').val().length == 0 || $('#sender_email').val().length == 0 ){
            return false;
        }

        return true;
    }

}]);