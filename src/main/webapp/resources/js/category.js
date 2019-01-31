/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var app = angular.module('erp', []);
app.controller('categoryctrl', function ($scope, $http) {
    var self = this;
    self.submit = function () {
        if ($scope.cname === "" | $scope.cdesc === "" | $scope.cname === " " | $scope.cdesc === " ") {
            $scope.message = "Please Enter value";
            return;
        }
        document.body.classList.remove('loaded');
        var data = {
            category_Name: $scope.cname,
            category_Description: $scope.cdesc
        };
        $http.post($scope.contextpath + "/createCategory", JSON.stringify(data)).then(function (response) {
            var data = response.data;
            var message = data.message;
            $scope.message = message;
            document.body.classList.add('loaded');
            if (data.status) {
                location.href = $scope.contextpath + "/category?msg="+message;
            }
        }, function (response) {
            $("#body").addClass('loaded');
            $scope.message = "ERROR in Connecting to server..";
        });
    };
});    