class zarafa::webapp::install {
  package { "zarafa-webapp":
    ensure => installed,
  }

  selboolean { "httpd_can_network_connect":
    persistent => true,
    value => "on",
  }

}
