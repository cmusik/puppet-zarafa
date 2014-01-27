class zarafa::gateway::config inherits zarafa::gateway {
  file { "gateway-cfg":
    path => "/etc/zarafa/gateway.cfg",
    content => template("zarafa/gateway.cfg.erb"),
    subscribe => Service["zarafa-gateway"]
  }
}
