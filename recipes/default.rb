#
# Cookbook:: create-user
# Recipe:: default
#
# Copyright:: 2021, John Tonello, All Rights Reserved.
if platform?('windows')
  windows_task 'chef-client' do
    user 'Admin'
    password 'mypassword'
    command 'chef-client'
    run_level :highest
    frequency :minute
    frequency_modifier 30
    action :create
  end
else
  chef_client_cron 'Run Chef Infra Client every 30 minutes' do
    minute '0,30'
    hour '*'
    day '*'
  end
end

# include_recipe 'create-user::user'
