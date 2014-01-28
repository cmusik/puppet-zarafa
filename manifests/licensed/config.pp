class zarafa::licensed::config inherits zarafa::licensed {
  file { "licensed-cfg":
    path => "/etc/zarafa/licensed.cfg",
    content => template("zarafa/licensed.cfg.erb"),
    notify => Service["zarafa-licensed"]
  }
}
