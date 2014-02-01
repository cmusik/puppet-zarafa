class zarafa::webapp {
  contain zarafa::repo
  contain zarafa::webapp::install
  contain zarafa::webapp::service

  Class["zarafa::repo"] -> Class["zarafa::webapp::install"] -> Class["zarafa::webapp::service"]
}
