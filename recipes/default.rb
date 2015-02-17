#
# Cookbook :: fleetd
# Recipe :: default
#
# Copyright 2015, Keep Holdings, Inc.
#


include_recipe "fleetd::#{node['fleet']['install_type']}"

directory "#{node['fleet']['config']['dir']}/" do
  recursive true
end

# TODO MORE STUFF
