# Plastic API

Plastic API is a boilerplate for building API mockups with grape and swagger.
The easiest way to to host a plastic API, is on heroku.

## How to run this

* bundle install
* rackup
* open http://localhost:9292

## Why?

I frequently discuss required modifications to APIs with various teams.
Often the easiest way to agree on the requirements for an API, is to write a mockup that defines request
and response formats. The mockup data returned by such an API can be as realistic as you need it to be.

It took a while to get this stack (below) to work, as there are various compatibility issues.
As I did not want to run into this problem every time I create a mock, I created this boilerplate repo.

That being said, be careful when you upgrade either of the components of the stack!

## Deploying to heroku

See a sample deployment at https://plastic-api.herokuapp.com

Deploying is the usual piece of case [with heroku](https://devcenter.heroku.com/articles/git).

Create the app

    heroku create

Then deploy new version with

    git push heroku master

## Stack

This projects is a working example of a combination of
- [grape](https://github.com/ruby-grape/grape) - DSL for API generation
- [grape-swagger](https://github.com/ruby-grape/grape-swagger) - generating Swagger Spec for a grape API
- [swagger-ui](https://github.com/swagger-api/swagger-ui) - turns swagger.json specs into the nice interactive API console that you see in the browser

## TODO

- grape-swagger current generates Swagger Spec 1.2. Upgrading this to Swagger Spec 2.0 would be good
- remove gems that are not needed
- provide some good sample APIs
- explain what can be done with rake (i.e. Show all API paths in the console)

## License

[MIT License (MIT)](http://spier.mit-license.org/)
