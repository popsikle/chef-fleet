#
# Cookbook :: fleetd
# Recipe :: binary
#
# Copyright 2015, Keep Holdings, Inc.
#



# download and install
tar_file = "fleet-#{node['fleetd']['version']}-linux-amd64"
tar_url = "https://github.com/coreos/fleet/releases/download/v#{node['fleetd']['version']}/#{tar_file}"

Chef::Log.info("Downloading redis tarball from #{new_resource.download_url}")
remote_file "#{Chef::Config[:file_cache_path]}/#{tar_file}" do
  owner "root"
  group "root"
  source tar_url
  checksum node['fleetd']['checksum']
  notifies :run, 'execute[extract-fleet]', :immediately
end

execute "extract-fleet" do
  command "tar --exclude=README.md xzf #{Chef::Config[:file_cache_path]}/#{tar_file} --strip-components=1 -C #{node['fleetd']['binary']['dir']}"
  action :nothing
end
