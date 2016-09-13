(function() {
  'use strict';

  angular.module("app").controller("frameworkCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get("/api/v1/frameworks.json").then(function(response) {
        $scope.frameworks = response.data;
      });
    }
  });
})();
