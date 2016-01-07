require 'rubygems'
require 'bundler'
Bundler.setup
Bundler.require(:default)

require 'json'
require 'open-uri'
require 'csv'
require 'pp'

# apis
require_relative './Status'

module API

  class Root < Grape::API
    # adds a prefix to all endpoints
    # prefix "/abc"

    # version is used in all calls, as part of the path (other strategies are possible too)
    version 'v1', :using => :path
    default_format :json

    # rescue all errors and return them as an API response
    rescue_from :all, :backtrace => true

    # CORS - just accept all requests from anywhere
    # https://github.com/intridea/grape#cors
    use Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get,:head,:post,:patch,:put,:delete,:options]
      end
    end

    # APIs
    mount Status::API

    # generates JSON calls for Swagger
    add_swagger_documentation :hide_documentation_path => false,
                              :api_version => "v1",
                              :markdown => GrapeSwagger::Markdown::KramdownAdapter,
                              :hide_format => true,
                              :info => { :contact => "sebastian@spier.hu", :title => "A plastic API title", :description => "A plastic API description" }
  end
  
end