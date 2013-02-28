class PluginController < ApplicationController

require 'open-uri'
require 'json'

def index


	#marketPlaceMinVersion("com.balsamiq.jira.plugins.mockups")
    @minversion = @minimumVersion

	
end



def fileloader
	uploaded_file = params[:file]
	@file = uploaded_file.read

	@myArray = Array.new

	@myArray = @file
	puts @myArray
	# puts file_content


end



 def marketPlaceMinVersion(usersPluginKey)

    url = "https://marketplace.atlassian.com/rest/1.0/plugins/"
    plugins_test = JSON.parse(open(url + usersPluginKey).read)

    versionArray = Array.new
    versionArray = plugins_test["version"]["compatibilities"]
     
     versionArray.each do |test|
       @minimumVersion = test["min"]["version"]
     end
   
 end




end






  # config = YAML.load_file("#{Dir.home}/environment-settings.yml")
  #        @myArray = Hash.new
  #        @superArray = Array.new 

  #        @myArray = config.inject([]) do |ary, elem|
  #               key, value = elem
  #               # value["url"] = "foo"
  #               url = value["url"]
  #               login = value["login"]
  #               password = value["password"]
  #               value["darkfeatures"] = getDarkFeatures(url, login, password)
  #               ary << value

  #        end
