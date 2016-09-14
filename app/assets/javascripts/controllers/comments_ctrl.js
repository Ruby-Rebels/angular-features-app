(function() {
  'use strict';

  angular.module('app').controller('commentsCtrl', function($scope, $http) {
    $scope.getFramework = function(id) {
      $http.get('/api/v1/frameworks/' + id.toString() + '.json').then(function(response) {
        $scope.framework = response.data;
      })
    }

    $scope.createComment = function(comment) {
      console.log(comment);
    }
  });
})();
