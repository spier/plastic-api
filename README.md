# Plastic API

Plastic API is a boilerplate for building API mockups with grape and swagger.

The easiest way to host an API mockup based on this, is on heroku.

## How to run this

Tested with ruby-2.3

    bundle install
    rackup
    open http://localhost:9292

## Why?

I frequently discuss required modifications to APIs with various teams.
Often the easiest way to agree on the requirements for an API, is to write a mockup that defines request
and response formats. The mockup data returned by such an API can be as realistic as you need it to be.

It took a while to get this stack (below) to work, as there are various compatibility issues.
As I did not want to run into this problem every time I create a mock, I created this boilerplate repo.

That being said, be careful when you upgrade either of the components of the stack!

## Deploying to heroku

See a sample deployment at https://plastic-api.herokuapp.com

Deploying to heroku is explained at https://devcenter.heroku.com/articles/git.

Create the app

    heroku create

Then deploy new version with

    git push heroku master

## Stack

This projects is a working example of a combination of

- [grape](https://github.com/ruby-grape/grape) (0.19.2) - DSL for API generation
- [grape-swagger](https://github.com/ruby-grape/grape-swagger) (0.27.0) - generating Swagger Spec for a grape API (generates Swagger Spec v2.0)
- [swagger-ui](https://github.com/swagger-api/swagger-ui) (2.1.5) - turns swagger.json specs into a nice interactive API console that runs in the browser

## Similar projects

https://github.com/ruby-grape/grape-on-rack has the same Stack but doesn't not include the swagger-ui.
Also contains some good examples of how to build APIs with grape.

## TODO

- upgrade to latest swagger-ui / at time of writing 2.2.10
- remove gems that are not needed
- provide some better sample APIs
- explain what can be done with rake (i.e. Show all API paths in the console)
- add localization for 'de' to swagger-ui (what is this good for?)

## License

[MIT License (MIT)](http://spier.mit-license.org/)
