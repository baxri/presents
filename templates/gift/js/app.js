
var app = angular.module('gift', []);

app.controller('GiftController', ['$scope', '$http', '$location', '$interval',  '$timeout', '$window', function ($scope, $http, $location, $interval, $timeout, $window) {

    $scope.destination = 0;
    $scope.amount = '30';
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


}]);