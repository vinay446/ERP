/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var helloAjaxApp = angular.module("myApp", []);

helloAjaxApp.controller("myCtrl", ['$scope', '$http', function ($scope, $http) {


        $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";

        $scope.sendPost = function () {

            alert($scope.emailID.toString());
//            var objectData =
//                    {
//                        Username: $scope.username.toString(),
//                        Password: $scope.password.toString()
//                    };
//
//            var objectDataString = JSON.stringify(objectData);

            alert($scope.emailID.toString());
            $http({
                url: 'uservalidate',
                method: "POST",
                data: {
                    user_Email: $scope.emailID,
                    user_password: $scope.password
                }
                ,
                headers: {
                    'Content-Type': 'application/json'
                }
            }).then(function (response) {
                console.log(response.data);
                // $scope.message = response.data;
                var data = response.data;
                alert(data);
                var status = data.status;
                alert(status);
                if (!status)
                {
                    $scope.message = data.message;
                    return;
                }
                alert("Success");


            }, function (response) {
                //fail case
                console.log(response);
                $scope.message = response;
            });

//            $.ajax({
//                type: "POST",
//                url: "uservalidate",
//                dataType: 'json', //mispelled
//                
//
//                data: {  
//                    username: $scope.username,
//                    password: $scope.password
//                },
//                success: function (data) {
//                    alert(data);
//                    console.log(msg);
//                }
//            }
//            );



        };

    }]);