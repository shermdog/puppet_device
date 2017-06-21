# Manage device.conf file.
# @api private

class puppet_device::conf {
  File {
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  $device_conf = $::puppet_deviceconfig
  ini_setting { "puppet_device_conf [comment]":
    ensure            => present,
    key_val_separator => ' ',
    section           => '',
    setting           => 'comment',
    value             => 'This file is managed by the puppet_device module',
    path              => $puppet_device::conf::device_conf,
  }
}
