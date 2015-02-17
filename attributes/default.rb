#
# Cookbook :: fleetd
# Attributes :: default
#
# Copyright 2015, Keep Holdings, Inc.
#


default['fleetd']['version'] = '0.9.0'
default['fleetd']['checksum'] = 'f8ed91293b58ef07c6466ba30150bb445abf892cd63b08589d84fc25512085d9'
default['fleetd']['sha256'] = '2d5c6bb0751ad3a50c0a219158439071a59e549f'

default['fleetd']['binary']['dir'] = '/usr/bin'
default['fleetd']['config']['dir'] = '/etc/fleet'
default['fleetd']['config']['filename'] = 'fleet.conf'

default['fleetd']['verbosity'] = 0
default['fleetd']['etcd_servers'] = ['http://127.0.0.1:4001']
default['fleetd']['etcd_request_timeout'] = 1.0
default['fleetd']['public_ip'] = nil
default['fleetd']['metadata'] = nil
default['fleetd']['agent_ttl'] = '30s'
default['fleetd']['engine_reconcile_interval'] = '30s'


