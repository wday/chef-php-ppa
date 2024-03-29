#
# Cookbook Name:: chef-php-ppa
# Recipe:: default
#

include_recipe 'apt'

execute 'apt-get update' do
  command 'apt-get -y update'
end

apt_repository "#{node['chef-php-ppa']['repository']}-#{node['lsb']['codename']}" do
  uri node['chef-php-ppa']['uri']
  distribution node['lsb']['codename']
  components ['main']
  keyserver node['chef-php-ppa']['keyserver']
  key node['chef-php-ppa']['key']
  action :add
  notifies :run, 'execute[apt-get update]', :immediately
end
