# Manage a device in device.conf.
# @api private

define puppet_device::conf::device (
  String $type,
  String $url,
  Enum['present', 'absent'] $ensure = 'present',
) {
  include puppet_device::conf
  if ($ensure == 'present') {
    ini_setting { "puppet_device_conf [${title}] type":
      ensure            => present,
      key_val_separator => ' ',
      section           => $title,
      setting           => 'type',
      value             => $type,
      path              => $puppet_device::conf::device_conf,
    }
    ini_setting { "puppet_device_conf [${title}] type":
      ensure            => present,
      key_val_separator => ' ',
      section           => $title,
      setting           => 'url',
      value             => $url,
      path              => $puppet_device::conf::device_conf,
    }
  }
}

