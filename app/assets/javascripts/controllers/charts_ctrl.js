(function() {
  'use strict';

  angular.module('app').controller('chartsCtrl', function($scope, $http) {
    $http.get('/api/v1/charts.json').then(function(response) {
      var frameworks = response.data;
      var ratings = [];
      var frameworkNames = [];
      for (var i = 0; i < frameworks.length; i++) {
        ratings.push(frameworks[i].average_rating);
        frameworkNames.push(frameworks[i].name);
      }
      var ctx = document.getElementById("myChart");
      var myChart = new Chart(ctx, {
        type: 'bar',
        yAxisID: "10",
        data: {
          labels: frameworkNames,
          datasets: [{
            label: 'Ratings for JS Frameworks',
            data: ratings,
            backgroundColor: [
              'rgba(255, 99, 132, 0.2)',
              'rgba(54, 162, 235, 0.2)',
              'rgba(255, 206, 86, 0.2)',
              'rgba(75, 192, 192, 0.2)',
              'rgba(153, 102, 255, 0.2)',
              'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
              'rgba(255,99,132,1)',
              'rgba(54, 162, 235, 1)',
              'rgba(255, 206, 86, 1)',
              'rgba(75, 192, 192, 1)',
              'rgba(153, 102, 255, 1)',
              'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
          }]
        },
        options: {
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero:true,
                stepSize: 2
              }
            }]
          }
        }
      });
    });
  });
})();
