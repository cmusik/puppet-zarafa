class zarafa::monitor::config inherits zarafa::monitor {
  file { "monitor-cfg":
    path => "/etc/zarafa/monitor.cfg",
    content => template("zarafa/monitor.cfg.erb"),
    notify => Service["zarafa-monitor"]
  }
}
