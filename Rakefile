require 'rubygems'
require 'rake'

require_relative 'apis/Root'

desc "Show all API paths"
task :show_api_docs do

  API::Root::routes.each do |r|
    path = r.route_path.gsub(":version", r.route_version)
    puts "#{r.route_method} #{path} - #{r.route_description}"
  end

end

task :default => :show_api_docs