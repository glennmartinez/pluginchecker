require 'open-uri'
require 'json'
require 'pp'

# def index

pluginKeyArray = Array.new

pluginKeyArray = ["com.stellarity.bamboo.tfs-repository-plugin",
"com.balsamiq.jira.plugins.mockups",
"com.okapya.jira.rekall",
"com.balsamiq.confluence.plugins.mockups",
"com.intenso.jira.plugin.multilevel-groupby-report",
"com.otpl.jira.plugins.lxp",
"com.appfusions.jira.sametime",
"confluence.editor.fullwindow",
"com.deiser.jira.profields",
"com.docminer.jira.docminer-license"]



 def marketPlaceMinVersion(usersPluginKey)

    url = "https://marketplace.atlassian.com/rest/1.0/plugins/"
    plugins_test = JSON.parse(open(url + usersPluginKey).read)

    versionArray = Array.new
    versionArray = plugins_test["version"]["compatibilities"]
     
     versionArray.each do |test|
       @minimumVersion = test["min"]["version"]
     end
   
 end

marketPlaceMinVersion("com.balsamiq.jira.plugins.mockups")
pp minversion = @minimumVersion
# pluginKeyArray.each do |key|
#     plugins_json = JSON.parse(open(url + key).read)

#      plugins_json

# end


 
 	# plugins_json["plugins"].each do |t|

 	# 	  pluginkey = t["pluginKey"]
   

 	# 	# puts  version
 	# end
 
	
# end

# end






  # config = YAML.load_file("#{Dir.home}/environment-settings.yml")
  #        @myArray = Hash.new
  #        @superArray = Array.new 

  #        @myArray = config.inject([]) do |ary, elem|
  #               key, value = elem
  #               # value["url"] = "foo"
  #               url = value["url"]
  #               login = value["login"]
  #               passwopprd = value["password"]
  #               value["darkfeatures"] = getDarkFeatures(url, login, password)
  #               ary << value

  #        end
