class zarafa::monitor::service {
  service { "zarafa-monitor":
    ensure => running,
  }
}
