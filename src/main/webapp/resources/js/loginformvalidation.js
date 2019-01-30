/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var helloAjaxApp = angular.module("myApp", []);

helloAjaxApp.controller("myCtrl", ['$scope', '$http', '$window', function ($scope, $http, $window) {


        $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";

        
      //Check the remember me condition
        $scope.rememberme = false;
        $scope.checkCondition = function (rememberMe) {
            alert(rememberMe);
            if (rememberMe.checked) {
                alert("true");
                $scope.rememberme = true;
                }
//             else {
//                alert("false");
//                $scope.rememberme = false;
//            }
        };
        $scope.sendPost = function () {

             //alert($scope.emailID.toString() + "dddd" + $scope.password.toString() + "reemenbt" + $scope.rememberme + "dfdf");


            
            $http({
                url: 'uservalidate',
                method: "POST",
                data: {
                    emailID: $scope.emailID,
                    password: $scope.password,
                    rememberMe: $scope.rememberme
                }
                ,
                headers: {
                    'Content-Type': 'application/json'
                }
            }).then(function (response) {
                console.log(response.data);
                // $scope.message = response.data;
                var data = response.data;
                //alert(data);
                var status = data.status;
                //  alert(data.message);

                var redirectpage = $scope.contextpath + "/home";

                //on success go to next page
                if (status === true)
                {
                    $window.location.href = redirectpage;


                }

                $scope.message = data.message;
                return;




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