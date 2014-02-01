class zarafa::repo {
  yumrepo { "yaffas":
    baseurl => "http://repo.yaffas.org/releases/latest/rhel/6",
    descr => "yaffas repository",
    enabled => 1,
    gpgcheck => 0
  }
}
