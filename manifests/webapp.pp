class zarafa::webapp {
  include zarafa::webapp::install
  #include zarafa::webapp::service

  #Package["zarafa::webapp::install"] -> Service["zarafa::webapp::service"]
}
