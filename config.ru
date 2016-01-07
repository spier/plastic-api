require 'rubygems'
require 'bundler'
Bundler.setup
Bundler.require(:default)

require './apis/Root'

class Web < Sinatra::Base
  # servers the Swagger UI on /
  get '/' do
    File.read(File.join('public', 'index.html'))
  end
end

# use Rack::Session::Cookie # I forgot what I needed this for
run Rack::Cascade.new [API::Root, Web]