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
        $scope.framework = response;
        $scope.createdMessage = response.created
        $scope.error = null;
        $scope.comment = null;
        $timeout(function() {
          $scope.createdMessage = null;
        }, 1500)
      }).error(function(response) {
        $scope.error = response.error;
        $scope.success = null;
      })
    }

    $scope.showEdit = function(framework, comment) {
      if (framework.email === comment.email) {
        comment.edit = true;
      }
    }

    $scope.removeEdit = function(comment) {
      comment.edit = false;
    }

    $scope.editComment = function(comment) {
      comment.editable = true;
    }

    $scope.updateComment = function(comment) {
      var commentParams = {
        comment_text: comment.comment_text
      }
      $http.patch('/api/v1/comments/' + comment.comment_id.toString() + '.json', commentParams)
      .success(function(response) {
        $scope.framework = response;
        $scope.updatedMessage = response.updated
        $scope.error = null;
        $scope.comment = null;
        $timeout(function() {
          $scope.updatedMessage = null;
        }, 1500)
      }).error(function(response) {
        $scope.error = response.error;
        $scope.success = null;
      })
    }
  });
})();
