#
# Cookbook Name:: an_minimart
# Recipe:: default
#
# Copyright (c) 2014 Chef Software Inc, All Rights Reserved.
#
include_recipe 'chef-vault'

app = chef_vault_item('apps', 'minimart')

supermarket_instance 'default' do
  action :create
  ssl_cert app['ssl_cert']
  ssl_key app['ssl_key']
  chef_server_url app['chef_server_url']
  chef_oauth2_app_id app['chef_oauth2_app_id']
  chef_oauth2_secret app['chef_oauth2_secret']
  options app['options']
end
