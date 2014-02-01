class zarafa::server::install {
  package { "zarafa-server":
    ensure => present,
    require => Class["mysql::server"]
  }

  package { "zarafa-utils":
    ensure => installed,
  }

  Yumrepo["yaffas"] -> Package["zarafa-server"]
}
