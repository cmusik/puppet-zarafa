class zarafa::server::service {
  service { "zarafa-server":
    ensure => running,
    subscribe => [ File["servercfg"], File["ldapcfg"] ],
  }

  #exec { "zarafa-create-public-store":
  #  command => "zarafa-admin -s",
  #  onlyif => "pidof zarafa-server",
  #}
}
