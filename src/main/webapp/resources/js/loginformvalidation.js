/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var helloAjaxApp = angular.module("myApp", []);

helloAjaxApp.controller("myCtrl", ['$scope', '$http', function ($scope, $http) {


        $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";

        $scope.sendPost = function () {
            alert($scope.username.toString());
            $http({
                url: '../uservalidate',
                method: "POST",
                data: {
                    'username': $scope.username,
                    'password': $scope.password
                  
                      }
//                ,
//                headers: {
//                    'Content-Type': 'application/json'
//                }
            }).then(function (response) {
                console.log(response.data);
                $scope.message = response.data;
            }, function (response) {
                //fail case
                console.log(response);
                $scope.message = response;
            });

        };
    }]);