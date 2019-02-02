/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/* global register */

var helloAjaxApp = angular.module("erp", []);

helloAjaxApp.controller("productCtrl", ['$scope', '$http', '$window', function ($scope, $http, $window) {


        $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";

        $scope.register = {};

        $scope.onloadFun = function () {
            alert("onloading" + $scope.contextpath);

            $http({
                url: 'http://localhost:8084/erp/listcategories/',

                method: "GET",
                headers: {
                    'Content-Type': 'application/json'
                }

            }).then(function (response) {

                var data = response.data;

                var myJSON = JSON.stringify(data);
                alert(myJSON);

                $scope.register.countries = data;

//                $scope.register.countries = [{
//                        category_Id: "1",
//                        category_Name: "Trackers"
//                    }, {
//                        category_Id: "2",
//                        category_Name: "Sensors"
//                    }];




            }), function (response) {
                //fail case
                var data = response.data;
                alert(data);
            };


        };




        $scope.submit = function () {
            alert("onloading" + $scope.contextpath);


            alert("ProductName" + $scope.productName.toString() + "ProductDesc" + $scope.productDescription.toString() + "ProductVersion=" + $scope.productVersion.toString());

            if ($scope.category_Id === "" | $scope.productName === "" | $scope.productDescription === " " | $scope.productVersion === " ") {
                $scope.message = "Please Enter value";
                return;
            }


            $http({
                url: $scope.contextpath + '/createProduct',
                method: "POST",
                data: {

//                    product_CategoryID: "9414",
                    product_Name: $scope.productName,
                    product_Description: $scope.productDescription,
                    product_Version: $scope.productVersion
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
