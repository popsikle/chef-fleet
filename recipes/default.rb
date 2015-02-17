#
# Cookbook :: fleetd
# Recipe :: default
#
# Copyright 2015, Keep Holdings, Inc.
#


include_recipe "fleetd::#{node['fleetd']['install_type']}"

directory "#{node['fleetd']['config']['dir']}/" do
  recursive true
end

# TODO MORE STUFF
