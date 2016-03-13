
var app = angular.module('gift', []);

app.controller('GiftController', ['$scope', '$http', '$location', '$interval',  '$timeout', '$window', function ($scope, $http, $location, $interval, $timeout, $window) {

    $scope.destination = 0;
    $scope.amount = '';
    $scope.deliver = 0;

    $scope.mobile = '';
    $scope.email = '';

    $scope.sender_fullname = '';
    $scope.sender_mobile = '';
    $scope.sender_email = '';

    $scope.text = '';
    $scope.date = '0000-00-00|00:00';





    $scope.d = '';
    $scope.m = '';
    $scope.y = '';
    $scope.h = '';
    $scope.mm = '00';

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

        if( $scope.currentStep == 5 ){
            return false;
        }

        $( '.step-' + $scope.currentStep).hide('fast', function(){
            $scope.currentStep++;
            $( '.step-' + $scope.currentStep).show('fast');
            $scope.setProgress();

        });

    }


    $scope.prevStep = function(){

        if( $scope.currentStep == 1 ){
            return false;
        }

        $( '.step-' + $scope.currentStep).hide('fast', function(){
            $scope.currentStep--;
            $( '.step-' + $scope.currentStep).show('fast');
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


}]);