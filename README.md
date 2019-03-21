# Ruby on Rails Tutorial sample application

This is the sample application for
[*Ruby on Rails Tutorial:
Learn Web Development with Rails*] (http://www.railstutorial.org/)
by [Michael Harlt] (http://www.michaelhartl.com).

## License

All source code in the [Ruby on Rails Tutorial] (http://railstutorial.org) is available jointly under the MIT License and the Beerware License. See [LICENSE.md] (LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:
```
$ rails db:migrate
```

Next, populate the database:
```
$ rails db:seed
```

Finally, run the test suite to verify that everything is working correctly:
```
$ rails test
```

If the test suite passes, you'll be ready to run the app in local server:
```
$ rails server
```

Visit http://localhost:3000/admin and log in using:

    User: admin@example.com
    Password: password

For more information see the
[*Ruby on Rails Tutorial* book] (http://www.railstutorial.org/book)
