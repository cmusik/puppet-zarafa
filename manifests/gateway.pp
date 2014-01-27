class zarafa::gateway (
  $server_bind = $zarafa::gateway::params::server_bind,
  $server_socket = $zarafa::gateway::params::server_socket,
  $server_hostname = $zarafa::gateway::params::server_hostname,
  $server_hostname_greeting = $zarafa::gateway::params::server_hostname_greeting,
  $run_as_user = $zarafa::gateway::params::run_as_user,
  $run_as_group = $zarafa::gateway::params::run_as_group,
  $pid_file = $zarafa::gateway::params::pid_file,
  $running_path = $zarafa::gateway::params::running_path,
  $pop3_enable = $zarafa::gateway::params::pop3_enable,
  $pop3_port = $zarafa::gateway::params::pop3_port,
  $pop3s_enable = $zarafa::gateway::params::pop3s_enable,
  $pop3s_port = $zarafa::gateway::params::pop3s_port,
  $imap_enable = $zarafa::gateway::params::imap_enable,
  $imap_port = $zarafa::gateway::params::imap_port,
  $imaps_enable = $zarafa::gateway::params::imaps_enable,
  $imaps_port = $zarafa::gateway::params::imaps_port,
  $imap_only_mailfolders = $zarafa::gateway::params::imap_only_mailfolders,
  $imap_public_folders = $zarafa::gateway::params::imap_public_folders,
  $imap_capability_idle = $zarafa::gateway::params::imap_capability_idle,
  $imap_max_messagesize = $zarafa::gateway::params::imap_max_messagesize,
  $imap_generate_utf8 = $zarafa::gateway::params::imap_generate_utf8,
  $imap_expunge_on_delete = $zarafa::gateway::params::imap_expunge_on_delete,
  $imap_store_rfc822 = $zarafa::gateway::params::imap_store_rfc822,
  $imap_max_fail_commands = $zarafa::gateway::params::imap_max_fail_commands,
  $ssl_private_key_file = $zarafa::gateway::params::ssl_private_key_file,
  $ssl_certificate_file = $zarafa::gateway::params::ssl_certificate_file,
  $ssl_verify_client = $zarafa::gateway::params::ssl_verify_client,
  $ssl_verify_file = $zarafa::gateway::params::ssl_verify_file,
  $ssl_verify_path = $zarafa::gateway::params::ssl_verify_path,
  $ssl_enable_v2 = $zarafa::gateway::params::ssl_enable_v2,
  $process_model = $zarafa::gateway::params::process_model,
  $log_method = $zarafa::gateway::params::log_method,
  $log_level = $zarafa::gateway::params::log_level,
  $log_file = $zarafa::gateway::params::log_file,
  $log_timestamp = $zarafa::gateway::params::log_timestamp,
) inherits zarafa::gateway::params {
  include zarafa::gateway::install
  include zarafa::gateway::config
  include zarafa::gateway::service

  Class["zarafa::server"] -> Class["zarafa::gateway::install"] -> Class["zarafa::server::config"] -> Class["zarafa::gateway::service"]
}
