class zarafa::webapp {
  include zarafa::webapp::install
  include zarafa::webapp::service

  Class["zarafa::webapp::install"] -> Class["zarafa::webapp::service"]
}
