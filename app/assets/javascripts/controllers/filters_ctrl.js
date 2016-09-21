(function() {
  'use strict';

  angular.module('app').controller("filtersCtrl", function($scope, $http) {
    $scope.ratings = [
      { value: 1, checked: false },
      { value: 2, checked: false },
      { value: 3, checked: false },
      { value: 4, checked: false },
      { value: 5, checked: false },
    ]
    var ratings = [];
    $http.get('/api/v1/filters.json').then(function(response) {
      $scope.frameworks = response.data;
    });

    $scope.searchRating = function(rating) {
      if (rating.checked) {
        ratings.push(rating.value)
      } else {
        var index = ratings.indexOf(rating)
        ratings.splice(index, 1);
      }
      var ratingsParams = {
        ratings: ratings
      }
      $http({
        method: "GET",
        url: "/api/v1/search.json?ratings=" + ratings
      }).then(function(response) {
        $scope.frameworks = response.data;
      })
    }
  });
})();
