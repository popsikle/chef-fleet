#
# Cookbook :: fleet
# Recipe :: binary
#
# Copyright 2015, Keep Holdings, Inc.
#



# download and install
tar_file = "fleet-v#{node['fleet']['version']}-linux-amd64.tar.gz"
tar_url = "https://github.com/coreos/fleet/releases/download/v#{node['fleet']['version']}/#{tar_file}"

Chef::Log.info("Downloading fleet tarball from #{tar_url}")
remote_file "#{Chef::Config[:file_cache_path]}/#{tar_file}" do
  owner "root"
  group "root"
  source tar_url
  checksum node['fleet']['checksum']
  notifies :run, 'execute[extract-fleet]', :immediately
end

execute "extract-fleet" do
  command "tar --exclude=README.md -xzf #{Chef::Config[:file_cache_path]}/#{tar_file} --strip-components=1 -C #{node['fleet']['binary']['dir']}"
  action :nothing
end
