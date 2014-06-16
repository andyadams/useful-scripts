#!/usr/bin/env ruby
if ARGV.length == 0
  p "Specify a site name on the command line such as 'mysite.dev'"
end

require 'fileutils'

site_name = ARGV.first.chomp
site_path = "/users/andy/Sites/#{site_name}/docs"

result = FileUtils.mkdir_p(site_path)

`cd #{site_path} && wget http://wordpress.org/latest.zip && unzip latest.zip && mv wordpress/* .`