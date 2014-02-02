class zarafa::server::install {
  package { "zarafa-server":
    ensure => present,
    require => Class["mysql::server"]
  }

  package { "zarafa-utils":
    ensure => installed,
  }

  package { "zarafa-multiserver":
    ensure => $zarafa::server::server_type ? {
      "multi" => installed,
      default => absent
    }
  }

  Yumrepo["yaffas"] -> Package["zarafa-server"]
}
