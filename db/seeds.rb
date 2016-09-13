User.create!(
  [
    {email: "lgrantham@example.com", password: "password", password_confirmation: "password"},
    {email: "mcrawley@example.com", password: "password", password_confirmation: "password"},
    {email: "ladymary@example.com", password: "password", password_confirmation: "password"},
    {email: "ana@example.com", password: "password", password_confirmation: "password"},
    {email: "jbates@example.com", password: "password", password_confirmation: "password"},
    {email: "carson@example.com", password: "password", password_confirmation: "password"},
    {email: "obrien@example.com", password: "password", password_confirmation: "password"},
    {email: "daisy@example.com", password: "password", password_confirmation: "password"}
  ]
)

JsFramework.create!(
  [
    {name: "AngularJS", author: "Google", source: "https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js", documentation: "https://docs.angularjs.org/guide"},
    {name: "Vue.js", author: "Evan You", source: "http://cdnjs.cloudflare.com/ajax/libs/vue/1.0.26/vue.min.js", documentation: "http://vuejs.org/guide/index.html"},
    {name: "React", author: "Facebook", source: "https://cdnjs.cloudflare.com/ajax/libs/react/15.3.1/react.js", documentation: "https://facebook.github.io/react/docs/getting-started.html"},
    {name: "Knockout.js", author: "Steve Sanderson", source: "https://cdnjs.cloudflare.com/ajax/libs/knockout/3.4.0/knockout-min.js", documentation: "http://knockoutjs.com/documentation/introduction.html"},
    {name: "Backbone.js", author: "Jeremy Ashkenas", source: "https://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.3.3/backbone.js", documentation: "http://backbonejs.org/"},
    {name: "Ember", author: "Yehuda Katz", source: "https://cdnjs.cloudflare.com/ajax/libs/ember.js/2.8.0/ember.js", documentation: "https://guides.emberjs.com/v2.8.0/"}
  ]
)
