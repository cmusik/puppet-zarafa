class zarafa::monitor (
  $server_socket = $zarafa::monitor::params::server_socket,
  $run_as_user = $zarafa::monitor::params::run_as_user,
  $run_as_group = $zarafa::monitor::params::run_as_group,
  $pid_file = $zarafa::monitor::params::pid_file,
  $running_path = $zarafa::monitor::params::running_path,
  $log_method = $zarafa::monitor::params::log_method,
  $log_level = $zarafa::monitor::params::log_level,
  $log_file = $zarafa::monitor::params::log_file,
  $log_timestamp = $zarafa::monitor::params::log_timestamp,
  $sslkey_file = $zarafa::monitor::params::sslkey_file,
  $sslkey_pass = $zarafa::monitor::params::sslkey_pass,
  $quota_check_interval = $zarafa::monitor::params::quota_check_interval,
  $mailquota_resend_interval = $zarafa::monitor::params::mailquota_resend_interval,
  $userquota_warning_template = $zarafa::monitor::params::userquota_warning_template,
  $userquota_soft_template = $zarafa::monitor::params::userquota_soft_template,
  $userquota_hard_template = $zarafa::monitor::params::userquota_hard_template,
  $companyquota_warning_template = $zarafa::monitor::params::companyquota_warning_template,
) inherits zarafa::monitor::params {
  include zarafa::monitor::install
  include zarafa::monitor::config
  include zarafa::monitor::service

  Class["zarafa::server"] -> Class["zarafa::monitor::install"] -> Class["zarafa::monitor::config"] -> Class["zarafa::monitor::service"]
}
