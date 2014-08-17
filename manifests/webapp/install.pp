class zarafa::webapp::install {
  package { "zarafa-webapp":
    ensure => installed,
  }

  case $::osfamily {
    "debian": { $phpmapi = "php5-mapi" }
    default: { $phpmapi = "php-mapi" }
  }

  package { $phpmapi:
    ensure => installed,
  }

  if $::osfamily == "redhat" {
    selboolean { "httpd_can_network_connect":
      persistent => true,
      value => "on",
    }
  }

}
