#
# Cookbook Name:: chef-php-ppa
# Attributes:: default
#

# Select the provider that you've got configured
default['chef-php-ppa']['keyserver'] = 'keyserver.ubuntu.com'

default['chef-php-ppa']['repository'] = 'ondrej-php'
default['chef-php-ppa']['key'] = 'E5267A6C'
default['chef-php-ppa']['uri'] = 'http://ppa.launchpad.net/ondrej/php5/ubuntu'
