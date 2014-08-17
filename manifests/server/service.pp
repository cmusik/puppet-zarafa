class zarafa::server::service {
  service { "zarafa-server":
    ensure => running,
    subscribe => [ File["servercfg"] ],
  }

  exec { "zarafa-create-public-store":
    command => "/bin/bash -c 'zarafa-admin -s && touch /etc/zarafa/.public-created'",
    onlyif => "/bin/bash -c '[[ ! -f /etc/zarafa/.public-created ]] && pidof zarafa-server'",
  }

  Service["zarafa-server"] -> Exec["zarafa-create-public-store"]
}
