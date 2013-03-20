class openvswitch::params{

}

class openvswitch{
  include openvswitch::params
  Class['openvswitch::params']
}