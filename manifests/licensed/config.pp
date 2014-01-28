class zarafa::licensed::config inherits zarafa::licensed {
  file { "licensed-cfg":
    path => "/etc/zarafa/licensed.cfg",
    content => template("zarafa/licensed.cfg.erb"),
    notify => Service["zarafa-licensed"]
  }

  file { "license-base":
    path => "/etc/zarafa/license/base",
    content => $base,
    notify => Service["zarafa-licensed"],
  }

  define cal {
    file { "cal-${title}":
      path => "/etc/zarafa/license/cal-${title}",
      content => "${title}",
      notify => Service["zarafa-licensed"],
    }
  }

  if $cal != undef {
    cal { $cal :}
  }
}
