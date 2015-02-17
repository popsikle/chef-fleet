#
# Cookbook :: fleet
# Attributes :: default
#
# Copyright 2015, Keep Holdings, Inc.
#


default['fleet']['install_type'] = 'binary'
default['fleet']['version'] = '0.9.0'
default['fleet']['checksum'] = 'f8ed91293b58ef07c6466ba30150bb445abf892cd63b08589d84fc25512085d9'


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


