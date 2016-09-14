(function() {
  'use strict';

  angular.module("app").controller("frameworkCtrl", function($scope, $http, $timeout) {
    $scope.setup = function() {
      $http.get("/api/v1/frameworks.json").then(function(response) {
        $scope.frameworks = response.data;
      });
    }

    $scope.favorite = function(framework) {
      framework.favorite = framework.favorite ? 0 : 1
      // prefers to pass numbers/strings in the params instead of booleans
      // 0 is falsey in JS - so set favorite to 0 if 1, 1 if 0
      // Then Rails can handle the params appropriately
      var frameworkParams = {
        framework_id: framework.id,
        favorite: framework.favorite
      }
      $http.post('/api/v1/favorites.json', frameworkParams).then(function(response) {
        framework.favoriteMessage = response.data.success;
      });
      $timeout(function() {
        framework.favoriteMessage = null;
      }, 1500)
    }
  });
})();
