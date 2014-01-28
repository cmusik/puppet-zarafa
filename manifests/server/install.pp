class zarafa::server::install {
  yumrepo { "yaffas":
    baseurl => "http://repo.yaffas.org/releases/latest/rhel/6",
    descr => "yaffas repository",
    enabled => 1,
    gpgcheck => 0
  }

  package { "zarafa-server":
    ensure => present,
    require => Class["mysql::server"]
  }

  package { "zarafa-utils":
    ensure => installed,
  }

  Yumrepo["yaffas"] -> Package["zarafa-server"]
}
