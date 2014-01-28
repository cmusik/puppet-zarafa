class zarafa::search::config inherits zarafa::search {
  file { "search-cfg":
    path => "/etc/zarafa/search.cfg",
    content => template("zarafa/search.cfg.erb"),
    notify => Service["zarafa-search"]
  }
}
