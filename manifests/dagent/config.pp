class zarafa::dagent::config inherits zarafa::dagent {
  file { "dagent-cfg":
    path => "/etc/zarafa/dagent.cfg",
    content => template("zarafa/dagent.cfg.erb"),
    notify => Service["zarafa-dagent"]
  }
}
