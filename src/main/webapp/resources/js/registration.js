/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



var app = angular.module('erp', []);
app.controller('registrationctrl', function ($scope, $http) {
    var self = this;
    self.submit = function () {
        if (!validateEmail($scope.emailID)) {
            $scope.message = "Please enter a valid emailID";
            return;
        }
        if ($scope.password !== $scope.cpassword) {
            $scope.message = "Passwords not matched..";
            return;
        }
        var data = {          
            user_Name: $scope.username,
            user_Email: $scope.emailID,
            user_password: $scope.password            
        };
        $http.post($scope.contextpath + "/registerUser", JSON.stringify(data)).then(function (response) {
            var data = response.data;            
            var status = data.status;
            alert(status);
//            var message = data.message;
//            $scope.message = message;
//            if (!status) {               
//                return;
//            }

        }, function (response) {
            //$scope.loading = false;
            $scope.message = "ERROR in Connecting to server..";
        });
    };
});

function validateEmail(sEmail) {
    var reEmail = /^(?:[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+\.)*[\w\!\#\$\%\&\'\*\+\-\/\=\?\^\`\{\|\}\~]+@(?:(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!\.)){0,61}[a-zA-Z0-9]?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9\-](?!$)){0,61}[a-zA-Z0-9]?)|(?:\[(?:(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\.){3}(?:[01]?\d{1,2}|2[0-4]\d|25[0-5])\]))$/;

    if (!sEmail.match(reEmail)) {
        return false;
    }

    return true;

}