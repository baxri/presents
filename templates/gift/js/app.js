
var app = angular.module('gift', []);

app.controller('GiftController', ['$scope', '$http', '$location', '$interval',  '$timeout', '$window', function ($scope, $http, $location, $interval, $timeout, $window) {

    $scope.destination = '0';
    $scope.amount = '50';

    $scope.mobile = '';
    $scope.email = '';

    $scope.sender_fullname = '';
    $scope.sender_email = '';

    $scope.date = '0000-00-00';

    $scope.d = 18;
    $scope.m = 'სექტემბერი';
    $scope.y = 2016;
    $scope.h = 22;
    $scope.mm = 00;

    $scope.validateGift = function(){

        if( $scope.amount.length == 0 ){
            return true;
        }

        if( $scope.amount == 0 ){
            return true;
        }



        return false;

    }

    $scope.setDestination = function( destination ){
        $scope.destination = destination;
    }

}]);