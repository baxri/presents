
var app = angular.module('gift', []);

app.controller('GiftController', ['$scope', '$http', '$location', '$interval',  '$timeout', '$window', function ($scope, $http, $location, $interval, $timeout, $window) {

    $scope.amount = '50';

    $scope.mobile = '598602084';
    $scope.email = 'giorgi.bibilashvili89@gmail.com';

    $scope.sender = 'sruutuna@gmail.com';
    $scope.text = '';

    $scope.date = '0000-00-00';

    $scope.validateGift = function(){

        if( $scope.amount.length == 0 ){
            return true;
        }

        if( $scope.amount == 0 ){
            return true;
        }

        if(  $scope.mobile.length == 0 && $scope.email.length == 0 ){
            return true;
        }


        return false;

    }

}]);