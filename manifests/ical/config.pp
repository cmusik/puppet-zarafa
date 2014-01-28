class zarafa::ical::config inherits zarafa::ical {
  file { "ical-cfg":
    path => "/etc/zarafa/ical.cfg",
    content => template("zarafa/ical.cfg.erb"),
    notify => Service["zarafa-ical"]
  }
}
