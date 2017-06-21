# Manage device.conf file.
# @api private

class puppet_device::conf {
  $device_conf = $::puppet_deviceconfig
}
