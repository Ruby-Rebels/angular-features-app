(function() {
  'use strict';

  angular.module('app').controller('commentsCtrl', function($scope, $http, $timeout) {
    $scope.getFramework = function(id) {
      $http.get('/api/v1/frameworks/' + id.toString() + '.json').then(function(response) {
        $scope.framework = response.data;
      })
    }

    $scope.createComment = function(comment, framework) {
      var commentParams = {
        comment_text: comment,
        framework_id: framework.id
      }
      $http.post('/api/v1/comments.json', commentParams).success(function(response) {
        console.log(response);
        $scope.framework = response;
        $scope.success = response.success
        $scope.error = null;
        $scope.comment = null;
        $timeout(function() {
          $scope.success = null;
        }, 1500)
      }).error(function(response) {
        $scope.error = response.error;
        $scope.success = null;
      })
    }
  });
})();
