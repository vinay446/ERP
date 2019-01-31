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

var categoryid = null;
var contextpath = null;
/**
 * Deletes a category from database
 * @param {type} categoryID
 * @param {type} contextPath
 * @returns {undefined}
 */
function deleteCategory(categoryID, contextPath) {
    categoryid = categoryID;
    contextpath = contextPath;
    $("#ModalLabel").html("Are you Sure you want to delete category " + categoryID + " ?");
    $('#confirmModel').modal('open');
}

/**
 * Calls after Confirm option clicked in confirmation dialog
 * @returns {undefined}
 */
function confirmDialog() {
    if (categoryid === null | contextpath === null) {
        $("#modelMessage").html("Opps, Something Went Wrong,Try After SomeTime...");
        $("#informModel").modal('open');
        return;
    }
    location.href=contextpath+"/deleteCategory/"+categoryid;
}