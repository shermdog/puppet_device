# Manage a device in device.conf.
# @api private

define puppet_device::conf::device (
  String $type,
  String $url,
  Enum['present', 'absent'] $ensure = 'present',
) {
  include puppet_device::conf
  ini_setting { "puppet_deviceconfig [${title}] type":
    ensure            => $ensure,
    key_val_separator => ' ',
    section           => $title,
    setting           => 'type',
    value             => $type,
    path              => $puppet_device::conf::device_conf,
  }
  ini_setting { "puppet_deviceconfig [${title}] url":
    ensure            => $ensure,
    key_val_separator => ' ',
    section           => $title,
    setting           => 'url',
    value             => $url,
    path              => $puppet_device::conf::device_conf,
  }
}

