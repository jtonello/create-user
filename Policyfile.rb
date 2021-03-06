# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'create-user-service'

# Where to find external cookbooks:
default_source :supermarket
default_source :chef_server, 'https://chef-automate.tiny.lab/organizations/lab'

# run_list: chef-client will run these recipes in the order specified.
include_policy 'Policyfile', path: '.'
run_list 'recipe[create-user]'
# run_list 'recipe[create-user::user]'

# Specify a custom source for a single cookbook:
# cookbook 'example_cookbook', path: '../cookbooks/example_cookbook'
