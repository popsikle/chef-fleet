#
# Cookbook :: fleet
# Attributes :: default
#
# Copyright 2015, Keep Holdings, Inc.
#


default['fleet']['install_type'] = 'binary'
default['fleet']['version'] = '0.9.1'
default['fleet']['checksum'] = '1b9de8f740fc770ba52aea3d050460889560d02dfc1138e9702da2e1c763e2fe'


default['fleet']['sha256'] = '2d5c6bb0751ad3a50c0a219158439071a59e549f'

default['fleet']['binary']['dir'] = '/usr/bin'
default['fleet']['config']['dir'] = '/etc/fleet'
default['fleet']['config']['filename'] = 'fleet.conf'


default['fleet']['client_only'] = false

default['fleet']['verbosity'] = 0
default['fleet']['etcd_servers'] = ['http://127.0.0.1:4001']
default['fleet']['etcd_request_timeout'] = 1.0
default['fleet']['public_ip'] = nil
default['fleet']['metadata'] = nil
default['fleet']['agent_ttl'] = '30s'
default['fleet']['engine_reconcile_interval'] = '30s'


