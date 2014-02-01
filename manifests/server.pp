class zarafa::server (
  $ldap_type,

  $server_bind = $zarafa::server::params::server_bind,
  $server_tcp_enabled = $zarafa::server::params::server_tcp_enabled,
  $server_tcp_port = $zarafa::server::params::server_tcp_port,
  $server_pipe_enabled = $zarafa::server::params::server_pipe_enabled,
  $server_pipe_name = $zarafa::server::params::server_pipe_name,
  $server_pipe_priority = $zarafa::server::params::server_pipe_priority,
  $server_name = $zarafa::server::params::server_name,
  $server_hostname = $zarafa::server::params::server_hostname,
  $database_engine = $zarafa::server::params::database_engine,
  $allow_local_users = $zarafa::server::params::allow_local_users,
  $local_admin_users = $zarafa::server::params::local_admin_users,
  $system_email_address = $zarafa::server::params::system_email_address,
  $run_as_user = $zarafa::server::params::run_as_user,
  $run_as_group = $zarafa::server::params::run_as_group,
  $pid_file = $zarafa::server::params::pid_file,
  $running_path = $zarafa::server::params::running_path,
  $coredump_enabled = $zarafa::server::params::coredump_enabled,
  $session_timeout = $zarafa::server::params::session_timeout,
  $license_socket = $zarafa::server::params::license_socket,
  $license_timeout = $zarafa::server::params::license_timeout,
  $log_method = $zarafa::server::params::log_method,
  $log_file = $zarafa::server::params::log_file,
  $log_level = $zarafa::server::params::log_level,
  $log_timestamp = $zarafa::server::params::log_timestamp,
  $audit_log_enabled = $zarafa::server::params::audit_log_enabled,
  $audit_log_method = $zarafa::server::params::audit_log_method,
  $audit_log_file = $zarafa::server::params::audit_log_file,
  $audit_log_level = $zarafa::server::params::audit_log_level,
  $audit_log_timestamp = $zarafa::server::params::audit_log_timestamp,
  $mysql_host = $zarafa::server::params::mysql_host,
  $mysql_port = $zarafa::server::params::mysql_port,
  $mysql_user = $zarafa::server::params::mysql_user,
  $mysql_password = $zarafa::server::params::mysql_password,
  $mysql_socket = $zarafa::server::params::mysql_socket,
  $mysql_database = $zarafa::server::params::mysql_database,
  $attachment_storage = $zarafa::server::params::attachment_storage,
  $attachment_path = $zarafa::server::params::attachment_path,
  $attachment_compression = $zarafa::server::params::attachment_compression,
  $server_ssl_enabled = $zarafa::server::params::server_ssl_enabled,
  $server_ssl_port = $zarafa::server::params::server_ssl_port,
  $server_ssl_key_file = $zarafa::server::params::server_ssl_key_file,
  $server_ssl_key_pass = $zarafa::server::params::server_ssl_key_pass,
  $server_ssl_ca_file = $zarafa::server::params::server_ssl_ca_file,
  $server_ssl_ca_path = $zarafa::server::params::server_ssl_ca_path,
  $server_ssl_enable_v2 = $zarafa::server::params::server_ssl_enable_v2,
  $sslkeys_path = $zarafa::server::params::sslkeys_path,
  $threads = $zarafa::server::params::threads,
  $watchdog_frequency = $zarafa::server::params::watchdog_frequency,
  $watchdog_max_age = $zarafa::server::params::watchdog_max_age,
  $server_max_keep_alive_requests = $zarafa::server::params::server_max_keep_alive_requests,
  $server_recv_timeout = $zarafa::server::params::server_recv_timeout,
  $server_read_timeout = $zarafa::server::params::server_read_timeout,
  $server_send_timeout = $zarafa::server::params::server_send_timeout,
  $softdelete_lifetime = $zarafa::server::params::softdelete_lifetime,
  $sync_lifetime = $zarafa::server::params::sync_lifetime,
  $sync_log_all_changes = $zarafa::server::params::sync_log_all_changes,
  $enable_sso = $zarafa::server::params::enable_sso,
  $enable_gab = $zarafa::server::params::enable_gab,
  $auth_method = $zarafa::server::params::auth_method,
  $pam_service = $zarafa::server::params::pam_service,
  $cache_cell_size = $zarafa::server::params::cache_cell_size,
  $cache_object_size = $zarafa::server::params::cache_object_size,
  $cache_indexedobject_size = $zarafa::server::params::cache_indexedobject_size,
  $cache_quota_size = $zarafa::server::params::cache_quota_size,
  $cache_quota_lifetime = $zarafa::server::params::cache_quota_lifetime,
  $cache_acl_size = $zarafa::server::params::cache_acl_size,
  $cache_store_size = $zarafa::server::params::cache_store_size,
  $cache_user_size = $zarafa::server::params::cache_user_size,
  $cache_userdetails_size = $zarafa::server::params::cache_userdetails_size,
  $cache_userdetails_lifetime = $zarafa::server::params::cache_userdetails_lifetime,
  $cache_server_size = $zarafa::server::params::cache_server_size,
  $cache_server_lifetime = $zarafa::server::params::cache_server_lifetime,
  $quota_warn = $zarafa::server::params::quota_warn,
  $quota_soft = $zarafa::server::params::quota_soft,
  $quota_hard = $zarafa::server::params::quota_hard,
  $companyquota_warn = $zarafa::server::params::companyquota_warn,
  $user_plugin = $zarafa::server::params::user_plugin,
  $user_plugin_config = $zarafa::server::params::user_plugin_config,
  $plugin_path = $zarafa::server::params::plugin_path,
  $createuser_script = $zarafa::server::params::createuser_script,
  $deleteuser_script = $zarafa::server::params::deleteuser_script,
  $creategroup_script = $zarafa::server::params::creategroup_script,
  $deletegroup_script = $zarafa::server::params::deletegroup_script,
  $createcompany_script = $zarafa::server::params::createcompany_script,
  $deletecompany_script = $zarafa::server::params::deletecompany_script,
  $user_safe_mode = $zarafa::server::params::user_safe_mode,
  $thread_stacksize = $zarafa::server::params::thread_stacksize,
  $enable_hosted_zarafa = $zarafa::server::params::enable_hosted_zarafa,
  $enable_distributed_zarafa = $zarafa::server::params::enable_distributed_zarafa,
  $storename_format = $zarafa::server::params::storename_format,
  $loginname_format = $zarafa::server::params::loginname_format,
  $client_update_enabled = $zarafa::server::params::client_update_enabled,
  $client_update_path = $zarafa::server::params::client_update_path,
  $client_update_log_level = $zarafa::server::params::client_update_log_level,
  $client_update_log_path = $zarafa::server::params::client_update_log_path,
  $hide_everyone = $zarafa::server::params::hide_everyone,
  $hide_system = $zarafa::server::params::hide_system,
  $search_enabled = $zarafa::server::params::search_enabled,
  $search_socket = $zarafa::server::params::search_socket,
  $search_timeout = $zarafa::server::params::search_timeout,
  $enable_enhanced_ics = $zarafa::server::params::enable_enhanced_ics,
  $enable_sql_procedures = $zarafa::server::params::enable_sql_procedures,
  $sync_gab_realtime = $zarafa::server::params::sync_gab_realtime,
  $disabled_features = $zarafa::server::params::disabled_features,
  $max_deferred_records = $zarafa::server::params::max_deferred_records,
  $max_deferred_records_folder = $zarafa::server::params::max_deferred_records_folder,
  $restrict_admin_permissions = $zarafa::server::params::restrict_admin_permissions,
  $embedded_attachment_limit = $zarafa::server::params::embedded_attachment_limit,
  $proxy_header = $zarafa::server::params::proxy_header,

  # ldap
  $ldap_host = $zarafa::server::params::ldap_host,
  $ldap_port = $zarafa::server::params::ldap_port,
  $ldap_protocol = $zarafa::server::params::ldap_protocol,
  $ldap_uri = $zarafa::server::params::ldap_uri,
  $ldap_server_charset = $zarafa::server::params::ldap_server_charset,
  $ldap_bind_user = $zarafa::server::params::ldap_bind_user,
  $ldap_bind_passwd = $zarafa::server::params::ldap_bind_passwd,
  $ldap_network_timeout = $zarafa::server::params::ldap_network_timeout,
  $ldap_last_modification_attribute = $zarafa::server::params::ldap_last_modification_attribute,
  $ldap_page_size = $zarafa::server::params::ldap_page_size,
  $ldap_search_base = $zarafa::server::params::ldap_search_base,
  $ldap_object_type_attribute = $zarafa::server::params::ldap_object_type_attribute,
  $ldap_user_type_attribute_value = $zarafa::server::params::ldap_user_type_attribute_value,
  $ldap_group_type_attribute_value = $zarafa::server::params::ldap_group_type_attribute_value,
  $ldap_contact_type_attribute_value = $zarafa::server::params::ldap_contact_type_attribute_value,
  $ldap_company_type_attribute_value = $zarafa::server::params::ldap_company_type_attribute_value,
  $ldap_addresslist_type_attribute_value = $zarafa::server::params::ldap_addresslist_type_attribute_value,
  $ldap_dynamicgroup_type_attribute_value = $zarafa::server::params::ldap_dynamicgroup_type_attribute_value,
  $ldap_user_search_filter = $zarafa::server::params::ldap_user_search_filter,
  $ldap_user_unique_attribute = $zarafa::server::params::ldap_user_unique_attribute,
  $ldap_user_unique_attribute_type = $zarafa::server::params::ldap_user_unique_attribute_type,
  $ldap_fullname_attribute = $zarafa::server::params::ldap_fullname_attribute,
  $ldap_loginname_attribute = $zarafa::server::params::ldap_loginname_attribute,
  $ldap_password_attribute = $zarafa::server::params::ldap_password_attribute,
  $ldap_authentication_method = $zarafa::server::params::ldap_authentication_method,
  $ldap_emailaddress_attribute = $zarafa::server::params::ldap_emailaddress_attribute,
  $ldap_emailaliases_attribute = $zarafa::server::params::ldap_emailaliases_attribute,
  $ldap_isadmin_attribute = $zarafa::server::params::ldap_isadmin_attribute,
  $ldap_nonactive_attribute = $zarafa::server::params::ldap_nonactive_attribute,
  $ldap_resource_type_attribute = $zarafa::server::params::ldap_resource_type_attribute,
  $ldap_resource_capacity_attribute = $zarafa::server::params::ldap_resource_capacity_attribute,
  $ldap_sendas_attribute = $zarafa::server::params::ldap_sendas_attribute,
  $ldap_sendas_attribute_type = $zarafa::server::params::ldap_sendas_attribute_type,
  $ldap_sendas_relation_attribute = $zarafa::server::params::ldap_sendas_relation_attribute,
  $ldap_user_certificate_attribute = $zarafa::server::params::ldap_user_certificate_attribute,
  $ldap_group_search_filter = $zarafa::server::params::ldap_group_search_filter,
  $ldap_group_unique_attribute = $zarafa::server::params::ldap_group_unique_attribute,
  $ldap_group_unique_attribute_type = $zarafa::server::params::ldap_group_unique_attribute_type,
  $ldap_groupname_attribute = $zarafa::server::params::ldap_groupname_attribute,
  $ldap_groupmembers_attribute = $zarafa::server::params::ldap_groupmembers_attribute,
  $ldap_groupmembers_attribute_type = $zarafa::server::params::ldap_groupmembers_attribute_type,
  $ldap_groupmembers_relation_attribute = $zarafa::server::params::ldap_groupmembers_relation_attribute,
  $ldap_group_security_attribute = $zarafa::server::params::ldap_group_security_attribute,
  $ldap_group_security_attribute_type = $zarafa::server::params::ldap_group_security_attribute_type,
  $ldap_company_search_filter = $zarafa::server::params::ldap_company_search_filter,
  $ldap_company_unique_attribute = $zarafa::server::params::ldap_company_unique_attribute,
  $ldap_company_unique_attribute_type = $zarafa::server::params::ldap_company_unique_attribute_type,
  $ldap_companyname_attribute = $zarafa::server::params::ldap_companyname_attribute,
  $ldap_company_view_attribute = $zarafa::server::params::ldap_company_view_attribute,
  $ldap_company_view_attribute_type = $zarafa::server::params::ldap_company_view_attribute_type,
  $ldap_company_view_relation_attribute = $zarafa::server::params::ldap_company_view_relation_attribute,
  $ldap_company_admin_attribute = $zarafa::server::params::ldap_company_admin_attribute,
  $ldap_company_admin_attribute_type = $zarafa::server::params::ldap_company_admin_attribute_type,
  $ldap_company_admin_relation_attribute = $zarafa::server::params::ldap_company_admin_relation_attribute,
  $ldap_company_system_admin_attribute = $zarafa::server::params::ldap_company_system_admin_attribute,
  $ldap_company_system_admin_attribute_type = $zarafa::server::params::ldap_company_system_admin_attribute_type,
  $ldap_company_system_admin_relation_attribute = $zarafa::server::params::ldap_company_system_admin_relation_attribute,
  $ldap_addresslist_search_filter = $zarafa::server::params::ldap_addresslist_search_filter,
  $ldap_addresslist_unique_attribute = $zarafa::server::params::ldap_addresslist_unique_attribute,
  $ldap_addresslist_unique_attribute_type = $zarafa::server::params::ldap_addresslist_unique_attribute_type,
  $ldap_addresslist_filter_attribute = $zarafa::server::params::ldap_addresslist_filter_attribute,
  $ldap_addresslist_search_base_attribute = $zarafa::server::params::ldap_addresslist_search_base_attribute,
  $ldap_addresslist_name_attribute = $zarafa::server::params::ldap_addresslist_name_attribute,
  $ldap_dynamicgroup_search_filter = $zarafa::server::params::ldap_dynamicgroup_search_filter,
  $ldap_dynamicgroup_unique_attribute = $zarafa::server::params::ldap_dynamicgroup_unique_attribute,
  $ldap_dynamicgroup_unique_attribute_type = $zarafa::server::params::ldap_dynamicgroup_unique_attribute_type,
  $ldap_dynamicgroup_filter_attribute = $zarafa::server::params::ldap_dynamicgroup_filter_attribute,
  $ldap_dynamicgroup_search_base_attribute = $zarafa::server::params::ldap_dynamicgroup_search_base_attribute,
  $ldap_dynamicgroup_name_attribute = $zarafa::server::params::ldap_dynamicgroup_name_attribute,
  $ldap_quota_userwarning_recipients_attribute = $zarafa::server::params::ldap_quota_userwarning_recipients_attribute,
  $ldap_quota_userwarning_recipients_attribute_type = $zarafa::server::params::ldap_quota_userwarning_recipients_attribute_type,
  $ldap_quota_userwarning_recipients_relation_attribute = $zarafa::server::params::ldap_quota_userwarning_recipients_relation_attribute,
  $ldap_quota_companywarning_recipients_attribute = $zarafa::server::params::ldap_quota_companywarning_recipients_attribute,
  $ldap_quota_companywarning_recipients_attribute_type = $zarafa::server::params::ldap_quota_companywarning_recipients_attribute_type,
  $ldap_quota_companywarning_recipients_relation_attribute = $zarafa::server::params::ldap_quota_companywarning_recipients_relation_attribute,
  $ldap_quotaoverride_attribute = $zarafa::server::params::ldap_quotaoverride_attribute,
  $ldap_warnquota_attribute = $zarafa::server::params::ldap_warnquota_attribute,
  $ldap_softquota_attribute = $zarafa::server::params::ldap_softquota_attribute,
  $ldap_hardquota_attribute = $zarafa::server::params::ldap_hardquota_attribute,
  $ldap_userdefault_quotaoverride_attribute = $zarafa::server::params::ldap_userdefault_quotaoverride_attribute,
  $ldap_userdefault_warnquota_attribute = $zarafa::server::params::ldap_userdefault_warnquota_attribute,
  $ldap_userdefault_softquota_attribute = $zarafa::server::params::ldap_userdefault_softquota_attribute,
  $ldap_userdefault_hardquota_attribute = $zarafa::server::params::ldap_userdefault_hardquota_attribute,
  $ldap_quota_multiplier = $zarafa::server::params::ldap_quota_multiplier,
  $ldap_addressbook_hide_attribute = $zarafa::server::params::ldap_addressbook_hide_attribute,
  $ldap_object_search_filter = $zarafa::server::params::ldap_object_search_filter,
  $ldap_filter_cutoff_elements = $zarafa::server::params::ldap_filter_cutoff_elements,
)
inherits zarafa::server::params {

  contain zarafa::repo
  contain zarafa::server::install
  contain zarafa::server::config
  contain zarafa::server::service

  Class["mysql::server"] -> Class["zarafa::repo"] -> Class["zarafa::server::install"] -> Class["zarafa::server::config"] -> Class["zarafa::server::service"]
}
