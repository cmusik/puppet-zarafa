class zarafa::webapp::service {
  service { "httpd":
    ensure => running,
  }
}
