class zarafa::spooler (
  $smtp_server = $zarafa::spooler::params::smtp_server,
  $smtp_port = $zarafa::spooler::params::smtp_port,
  $server_socket = $zarafa::spooler::params::server_socket,
  $run_as_user = $zarafa::spooler::params::run_as_user,
  $run_as_group = $zarafa::spooler::params::run_as_group,
  $pid_file = $zarafa::spooler::params::pid_file,
  $running_path = $zarafa::spooler::params::running_path,
  $log_method = $zarafa::spooler::params::log_method,
  $log_level = $zarafa::spooler::params::log_level,
  $log_file = $zarafa::spooler::params::log_file,
  $log_timestamp = $zarafa::spooler::params::log_timestamp,
  $sslkey_file = $zarafa::spooler::params::sslkey_file,
  $sslkey_pass = $zarafa::spooler::params::sslkey_pass,
  $max_threads = $zarafa::spooler::params::max_threads,
  $fax_domain = $zarafa::spooler::params::fax_domain,
  $fax_international = $zarafa::spooler::params::fax_international,
  $always_send_delegates = $zarafa::spooler::params::always_send_delegates,
  $allow_redirect_spoofing = $zarafa::spooler::params::allow_redirect_spoofing,
  $copy_delegate_mails = $zarafa::spooler::params::copy_delegate_mails,
  $allow_delegate_meeting_request = $zarafa::spooler::params::allow_delegate_meeting_request,
  $allow_send_to_everyone = $zarafa::spooler::params::allow_send_to_everyone,
  $always_send_tnef = $zarafa::spooler::params::always_send_tnef,
  $always_send_utf8 = $zarafa::spooler::params::always_send_utf8,
  $charset_upgrade = $zarafa::spooler::params::charset_upgrade,
  $enable_dsn = $zarafa::spooler::params::enable_dsn,
  $expand_groups = $zarafa::spooler::params::expand_groups,
  $archive_on_send = $zarafa::spooler::params::archive_on_send,
  $plugin_enabled = $zarafa::spooler::params::plugin_enabled,
  $plugin_manager_path = $zarafa::spooler::params::plugin_manager_path,
  $plugin_path = $zarafa::spooler::params::plugin_path,
) inherits zarafa::spooler::params {
  contain zarafa::spooler::install
  contain zarafa::spooler::config
  contain zarafa::spooler::service

  Class["zarafa::server"] -> Class["zarafa::spooler::install"] -> Class["zarafa::spooler::config"] -> Class["zarafa::spooler::service"]
}
