class zarafa::licensed (
  $base,
  $cal = undef,
  $server_pipe_name = $zarafa::licensed::params::server_pipe_name,
  $server_socket = $zarafa::licensed::params::server_socket,
  $sslkey_file = $zarafa::licensed::params::sslkey_file,
  $sslkey_pass = $zarafa::licensed::params::sslkey_pass,
  $license_path = $zarafa::licensed::params::license_path,
  $run_as_user = $zarafa::licensed::params::run_as_user,
  $run_as_group = $zarafa::licensed::params::run_as_group,
  $pid_file = $zarafa::licensed::params::pid_file,
  $running_path = $zarafa::licensed::params::running_path,
  $log_method = $zarafa::licensed::params::log_method,
  $log_file = $zarafa::licensed::params::log_file,
  $log_level = $zarafa::licensed::params::log_level,
  $log_timestamp = $zarafa::licensed::params::log_timestamp,
) inherits zarafa::licensed::params {
  contain zarafa::licensed::install
  contain zarafa::licensed::config
  contain zarafa::licensed::service

  Class["zarafa::server"] -> Class["zarafa::licensed::install"] -> Class["zarafa::licensed::config"] -> Class["zarafa::licensed::service"]
}
