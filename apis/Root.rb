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
    rescue_from :all, :backtrace => false

    # CORS - just accept all requests from anywhere
    # https://github.com/ruby-grape/grape#cors
    use Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get,:head,:post,:patch,:put,:delete,:options]
      end
    end

    # APIs
    mount Status::API

    # generates JSON calls for Swagger
    # see https://github.com/ruby-grape/grape-swagger
    add_swagger_documentation :hide_documentation_path => false,
                              :doc_version => 'v1',
                              :hide_format => true,
                              :info => {
                                  :title => "An API containing only plastic",
                                  :description => "Generates a swagger 2.0 compliant API description. Sources at https://github.com/spier/plastic-api",
                                  :contact_name => "Sebastian Spier",
                                  :contact_email => "sebastian@spier.hu",
                                  :contact_url => "http://spier.hu",
                                  :license => "MIT License",
                                  :license_url => "http://spier.mit-license.org/",
                                  :terms_of_service_url => "https://github.com/spier/plastic-api"
                              }
  end
  
end