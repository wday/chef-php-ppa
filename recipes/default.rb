#
# Cookbook Name:: chef-php-ppa
# Recipe:: default
#

include_recipe "apt"

execute "apt-get update" do
  action :nothing
  command "apt-get update"
end

apt_repository node["chef-php-ppa"]["ppa"]["repository"] do
  uri node["chef-php-ppa"]["ppa"]["uri"]
  distribution node["lsb"]["codename"]
  components ["main"]
  keyserver node["chef-php-ppa"]["keyserver"]
  key node["chef-php-ppa"]["ppa"]["key"]
  action :add
  notifies :run, "execute[apt-get update]", :immediately
end
