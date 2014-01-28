class zarafa::ical (
  $run_as_user = $zarafa::ical::params::run_as_user,
  $run_as_group = $zarafa::ical::params::run_as_group,
  $pid_file = $zarafa::ical::params::pid_file,
  $running_path = $zarafa::ical::params::running_path,
  $server_bind = $zarafa::ical::params::server_bind,
  $ical_enable = $zarafa::ical::params::ical_enable,
  $ical_port = $zarafa::ical::params::ical_port,
  $icals_enable = $zarafa::ical::params::icals_enable,
  $icals_port = $zarafa::ical::params::icals_port,
  $server_socket = $zarafa::ical::params::server_socket,
  $process_model = $zarafa::ical::params::process_model,
  $log_method = $zarafa::ical::params::log_method,
  $log_level = $zarafa::ical::params::log_level,
  $log_file = $zarafa::ical::params::log_file,
  $log_timestamp = $zarafa::ical::params::log_timestamp,
  $ssl_private_key_file = $zarafa::ical::params::ssl_private_key_file,
  $ssl_certificate_file = $zarafa::ical::params::ssl_certificate_file,
  $ssl_verify_client = $zarafa::ical::params::ssl_verify_client,
  $ssl_verify_file = $zarafa::ical::params::ssl_verify_file,
  $ssl_verify_path = $zarafa::ical::params::ssl_verify_path,
  $ssl_enable_v2 = $zarafa::ical::params::ssl_enable_v2,
  $server_timezone = $zarafa::ical::params::server_timezone,
  $default_charset = $zarafa::ical::params::default_charset,
  $enable_ical_get = $zarafa::ical::params::enable_ical_get,
) inherits zarafa::ical::params {
  include zarafa::ical::install
  include zarafa::ical::config
  include zarafa::ical::service

  Class["zarafa::server"] -> Class["zarafa::ical::install"] -> Class["zarafa::ical::config"] -> Class["zarafa::ical::service"]
}
