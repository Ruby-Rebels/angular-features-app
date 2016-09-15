(function() {
  'use strict';

  angular.module('app').controller('ratingsCtrl', function($scope, $http) {
    $http.get('/api/v1/ratings.json').then(function(response) {
      $scope.frameworks = response.data;
      fillStars();
    })

    $scope.favoriteFramework = function(framework, star) {
      console.log(star)
      var favoriteParams = {
        framework_id: framework.id,
        rate: star.rating
      }
      $http.post('/api/v1/ratings.json', favoriteParams).success(function(response) {
        framework.user_rating = response.user_rating
        fillStars();
      })
    }

    function fillStars() {
      $scope.frameworks.forEach(function(framework) {
        framework.stars.forEach(function(star) {
          star.filled = framework.user_rating >= star.rating
        })
      })
    }

    $scope.emptyStar = function(framework, star) {
      framework.stars.forEach(function(s) {
        if (s.rating > framework.user_rating) {
          s.filled = false;
        }
      })
    }

    $scope.fillStar = function(framework, star) {
      framework.stars.forEach(function(s) {
        if (s.rating <= star.rating) {
          s.filled = true;
        }
      })
    }
  });
})();
