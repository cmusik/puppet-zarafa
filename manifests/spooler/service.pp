class zarafa::spooler::service {
  service { "zarafa-spooler":
    ensure => running,
  }
}
