
# Install these packages:
#   - openvswitch-datapath-source
#   - bridge-utils
#   - module-assistant
#   - openvswitch-brcompat
#   - openvswitch-common
#   - openvswitch-switch
#   - linux-headers-3.2.0-23-generic
#   - linux-headers-generic-pae
# Then build the module:
$ module-assistant auto-install openvswitch-datapath


Next we set BRCOMPAT=yes in /etc/default/openvswitch-switch and restart openvswitch-switch.

