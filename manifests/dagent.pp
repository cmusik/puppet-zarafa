class zarafa::dagent (
  $server_socket = $zarafa::dagent::params::server_socket,
  $sslkey_file = $zarafa::dagent::params::sslkey_file,
  $sslkey_pass = $zarafa::dagent::params::sslkey_pass,
  $log_method = $zarafa::dagent::params::log_method,
  $log_level = $zarafa::dagent::params::log_level,
  $log_file = $zarafa::dagent::params::log_file,
  $log_timestamp = $zarafa::dagent::params::log_timestamp,
  $log_raw_message = $zarafa::dagent::params::log_raw_message,
  $log_raw_message_path = $zarafa::dagent::params::log_raw_message_path,
  $server_bind = $zarafa::dagent::params::server_bind,
  $lmtp_port = $zarafa::dagent::params::lmtp_port,
  $lmtp_max_threads = $zarafa::dagent::params::lmtp_max_threads,
  $run_as_user = $zarafa::dagent::params::run_as_user,
  $run_as_group = $zarafa::dagent::params::run_as_group,
  $pid_file = $zarafa::dagent::params::pid_file,
  $spam_header_name = $zarafa::dagent::params::spam_header_name,
  $spam_header_value = $zarafa::dagent::params::spam_header_value,
  $archive_on_delivery = $zarafa::dagent::params::archive_on_delivery,
  $plugin_enabled = $zarafa::dagent::params::plugin_enabled,
  $plugin_manager_path = $zarafa::dagent::params::plugin_manager_path,
  $plugin_path = $zarafa::dagent::params::plugin_path,
  $set_rule_headers = $zarafa::dagent::params::set_rule_headers,
  $no_double_forward = $zarafa::dagent::params::no_double_forward,
) inherits zarafa::dagent::params {
  contain zarafa::dagent::install
  contain zarafa::dagent::config
  contain zarafa::dagent::service

  Class["zarafa::server"] -> Class["zarafa::dagent::install"] -> Class["zarafa::dagent::config"] -> Class["zarafa::dagent::service"]
}
