## To run the app

```bash
$ git clone git@github.com:Ruby-Rebels/angular-features-app.git
$ cd angular-features-app
$ bundle install
$ rake db:create
$ rake db:migrate
$ rake db:seed
$ rails s
```

You can login with any of the users found in `db/seeds.rb`

The navbar will guide you to the various features. Check out the code following these steps:
* look at the route in the url bar. For example, the Favorite Example is routed to "/frameworks".
* Go to `routes.rb` to see which controller and action are run when a `GET` request is made to `/frameworks`.
* Now you know the controller and view that are used.
* To see the JS code, you simply go to the view and look at `ng-controller=`. That will tell you which JS controller is being used. I've named these by convention, so the controller name should match the file name.
