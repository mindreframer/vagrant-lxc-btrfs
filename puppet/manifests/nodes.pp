node default {
  class{'basic': stage => first}
  class{"runit":}
  -> class{"btrfs":}
  -> class{"lxc":}
}