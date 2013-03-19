class lxc{
  include lxc::packages
  include lxc::resolver
  Class['lxc::packages'] -> Class['lxc::resolver']
}

class lxc::packages{
  package{"lxc":}
  package{"squashfs-tools":}
}

class lxc::resolver{
  file{"/etc/resolvconf/resolv.conf.d/head":
    content => "nameserver 10.0.3.1\n"
  }
  -> exec{"lxc::resolver::reload":
    command => "resolvconf  -u"
  }
}
