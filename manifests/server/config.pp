class zarafa::server::config inherits zarafa::server {
  file { "servercfg":
    path => "/etc/zarafa/server.cfg",
    owner => "root",
    group => "root",
    mode => "0640",
    require => Package["zarafa-server"],
    content => template("zarafa/server.cfg.erb")
  }

  file { "ldapcfg":
    path => "/etc/zarafa/ldap.cfg",
    owner => "root",
    group => "root",
    mode => "0640",
    require => Package["zarafa-server"],
    content => template("zarafa/ldap.cfg.erb")
  }
}
