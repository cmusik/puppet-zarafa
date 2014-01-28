class zarafa::search (
  $index_path = $zarafa::search::params::index_path,
  $run_as_user = $zarafa::search::params::run_as_user,
  $run_as_group = $zarafa::search::params::run_as_group,
  $pid_file = $zarafa::search::params::pid_file,
  $running_path = $zarafa::search::params::running_path,
  $limit_results = $zarafa::search::params::limit_results,
  $server_socket = $zarafa::search::params::server_socket,
  $sslkey_file = $zarafa::search::params::sslkey_file,
  $sslkey_pass = $zarafa::search::params::sslkey_pass,
  $server_bind_name = $zarafa::search::params::server_bind_name,
  $ssl_private_key_file = $zarafa::search::params::ssl_private_key_file,
  $ssl_certificate_file = $zarafa::search::params::ssl_certificate_file,
  $log_method = $zarafa::search::params::log_method,
  $log_level = $zarafa::search::params::log_level,
  $log_file = $zarafa::search::params::log_file,
  $log_timestamp = $zarafa::search::params::log_timestamp,
  $term_cache_size = $zarafa::search::params::term_cache_size,
  $optimize_start = $zarafa::search::params::optimize_start,
  $optimize_stop = $zarafa::search::params::optimize_stop,
  $optimize_age = $zarafa::search::params::optimize_age,
  $index_attachments = $zarafa::search::params::index_attachments,
  $index_attachment_max_size = $zarafa::search::params::index_attachment_max_size,
  $index_attachment_parser = $zarafa::search::params::index_attachment_parser,
  $index_attachment_parser_max_memory = $zarafa::search::params::index_attachment_parser_max_memory,
  $index_attachment_parser_max_cputime = $zarafa::search::params::index_attachment_parser_max_cputime,
  $index_attachment_mime_filter = $zarafa::search::params::index_attachment_mime_filter,
  $index_attachment_extension_filter = $zarafa::search::params::index_attachment_extension_filter,
) inherits zarafa::search::params {
  include zarafa::search::install
  include zarafa::search::config
  include zarafa::search::service

  Class["zarafa::server"] -> Class["zarafa::search::install"] -> Class["zarafa::search::config"] -> Class["zarafa::search::service"]
}
