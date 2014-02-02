class zarafa::server::config inherits zarafa::server {
  include zarafa::ldap

  # server

  $enable_distributed_zarafa = $server_type ? {
    "multi" => "true",
    default => "false",
  }

  # ldap

  $_ldap_type = $server_type ? {
    "multi" => "$ldap_type-ms",
    default => $ldap_type,
  }

  $_ldap_host = $ldap_host ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_host],
    default => $ldap_host,
  }

  $_ldap_port = $ldap_port ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_port],
    default => $ldap_port,
  }

  $_ldap_protocol = $ldap_protocol ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_protocol],
    default => $ldap_protocol,
  }

  $_ldap_uri = $ldap_uri ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_uri],
    default => $ldap_uri,
  }

  $_ldap_server_charset = $ldap_server_charset ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_server_charset],
    default => $ldap_server_charset,
  }

  $_ldap_bind_user = $ldap_bind_user ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_bind_user],
    default => $ldap_bind_user,
  }

  $_ldap_bind_passwd = $ldap_bind_passwd ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_bind_passwd],
    default => $ldap_bind_passwd,
  }

  $_ldap_network_timeout = $ldap_network_timeout ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_network_timeout],
    default => $ldap_network_timeout,
  }

  $_ldap_last_modification_attribute = $ldap_last_modification_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_last_modification_attribute],
    default => $ldap_last_modification_attribute,
  }

  $_ldap_page_size = $ldap_page_size ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_page_size],
    default => $ldap_page_size,
  }

  $_ldap_search_base = $ldap_search_base ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_search_base],
    default => $ldap_search_base,
  }

  $_ldap_object_type_attribute = $ldap_object_type_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_object_type_attribute],
    default => $ldap_object_type_attribute,
  }

  $_ldap_user_type_attribute_value = $ldap_user_type_attribute_value ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_user_type_attribute_value],
    default => $ldap_user_type_attribute_value,
  }

  $_ldap_group_type_attribute_value = $ldap_group_type_attribute_value ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_group_type_attribute_value],
    default => $ldap_group_type_attribute_value,
  }

  $_ldap_contact_type_attribute_value = $ldap_contact_type_attribute_value ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_contact_type_attribute_value],
    default => $ldap_contact_type_attribute_value,
  }

  $_ldap_company_type_attribute_value = $ldap_company_type_attribute_value ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_type_attribute_value],
    default => $ldap_company_type_attribute_value,
  }

  $_ldap_addresslist_type_attribute_value = $ldap_addresslist_type_attribute_value ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_addresslist_type_attribute_value],
    default => $ldap_addresslist_type_attribute_value,
  }

  $_ldap_dynamicgroup_type_attribute_value = $ldap_dynamicgroup_type_attribute_value ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_dynamicgroup_type_attribute_value],
    default => $ldap_dynamicgroup_type_attribute_value,
  }

  $_ldap_user_search_filter = $ldap_user_search_filter ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_user_search_filter],
    default => $ldap_user_search_filter,
  }

  $_ldap_user_unique_attribute = $ldap_user_unique_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_user_unique_attribute],
    default => $ldap_user_unique_attribute,
  }

  $_ldap_user_unique_attribute_type = $ldap_user_unique_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_user_unique_attribute_type],
    default => $ldap_user_unique_attribute_type,
  }

  $_ldap_fullname_attribute = $ldap_fullname_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_fullname_attribute],
    default => $ldap_fullname_attribute,
  }

  $_ldap_loginname_attribute = $ldap_loginname_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_loginname_attribute],
    default => $ldap_loginname_attribute,
  }

  $_ldap_password_attribute = $ldap_password_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_password_attribute],
    default => $ldap_password_attribute,
  }

  $_ldap_authentication_method = $ldap_authentication_method ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_authentication_method],
    default => $ldap_authentication_method,
  }

  $_ldap_emailaddress_attribute = $ldap_emailaddress_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_emailaddress_attribute],
    default => $ldap_emailaddress_attribute,
  }

  $_ldap_emailaliases_attribute = $ldap_emailaliases_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_emailaliases_attribute],
    default => $ldap_emailaliases_attribute,
  }

  $_ldap_isadmin_attribute = $ldap_isadmin_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_isadmin_attribute],
    default => $ldap_isadmin_attribute,
  }

  $_ldap_nonactive_attribute = $ldap_nonactive_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_nonactive_attribute],
    default => $ldap_nonactive_attribute,
  }

  $_ldap_resource_type_attribute = $ldap_resource_type_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_resource_type_attribute],
    default => $ldap_resource_type_attribute,
  }

  $_ldap_resource_capacity_attribute = $ldap_resource_capacity_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_resource_capacity_attribute],
    default => $ldap_resource_capacity_attribute,
  }

  $_ldap_sendas_attribute = $ldap_sendas_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_sendas_attribute],
    default => $ldap_sendas_attribute,
  }

  $_ldap_sendas_attribute_type = $ldap_sendas_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_sendas_attribute_type],
    default => $ldap_sendas_attribute_type,
  }

  $_ldap_sendas_relation_attribute = $ldap_sendas_relation_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_sendas_relation_attribute],
    default => $ldap_sendas_relation_attribute,
  }

  $_ldap_user_certificate_attribute = $ldap_user_certificate_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_user_certificate_attribute],
    default => $ldap_user_certificate_attribute,
  }

  $_ldap_group_search_filter = $ldap_group_search_filter ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_group_search_filter],
    default => $ldap_group_search_filter,
  }

  $_ldap_group_unique_attribute = $ldap_group_unique_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_group_unique_attribute],
    default => $ldap_group_unique_attribute,
  }

  $_ldap_group_unique_attribute_type = $ldap_group_unique_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_group_unique_attribute_type],
    default => $ldap_group_unique_attribute_type,
  }

  $_ldap_groupname_attribute = $ldap_groupname_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_groupname_attribute],
    default => $ldap_groupname_attribute,
  }

  $_ldap_groupmembers_attribute = $ldap_groupmembers_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_groupmembers_attribute],
    default => $ldap_groupmembers_attribute,
  }

  $_ldap_groupmembers_attribute_type = $ldap_groupmembers_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_groupmembers_attribute_type],
    default => $ldap_groupmembers_attribute_type,
  }

  $_ldap_groupmembers_relation_attribute = $ldap_groupmembers_relation_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_groupmembers_relation_attribute],
    default => $ldap_groupmembers_relation_attribute,
  }

  $_ldap_group_security_attribute = $ldap_group_security_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_group_security_attribute],
    default => $ldap_group_security_attribute,
  }

  $_ldap_group_security_attribute_type = $ldap_group_security_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_group_security_attribute_type],
    default => $ldap_group_security_attribute_type,
  }

  $_ldap_company_search_filter = $ldap_company_search_filter ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_search_filter],
    default => $ldap_company_search_filter,
  }

  $_ldap_company_unique_attribute = $ldap_company_unique_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_unique_attribute],
    default => $ldap_company_unique_attribute,
  }

  $_ldap_company_unique_attribute_type = $ldap_company_unique_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_unique_attribute_type],
    default => $ldap_company_unique_attribute_type,
  }

  $_ldap_companyname_attribute = $ldap_companyname_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_companyname_attribute],
    default => $ldap_companyname_attribute,
  }

  $_ldap_company_view_attribute = $ldap_company_view_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_view_attribute],
    default => $ldap_company_view_attribute,
  }

  $_ldap_company_view_attribute_type = $ldap_company_view_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_view_attribute_type],
    default => $ldap_company_view_attribute_type,
  }

  $_ldap_company_view_relation_attribute = $ldap_company_view_relation_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_view_relation_attribute],
    default => $ldap_company_view_relation_attribute,
  }

  $_ldap_company_admin_attribute = $ldap_company_admin_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_admin_attribute],
    default => $ldap_company_admin_attribute,
  }

  $_ldap_company_admin_attribute_type = $ldap_company_admin_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_admin_attribute_type],
    default => $ldap_company_admin_attribute_type,
  }

  $_ldap_company_admin_relation_attribute = $ldap_company_admin_relation_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_admin_relation_attribute],
    default => $ldap_company_admin_relation_attribute,
  }

  $_ldap_company_system_admin_attribute = $ldap_company_system_admin_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_system_admin_attribute],
    default => $ldap_company_system_admin_attribute,
  }

  $_ldap_company_system_admin_attribute_type = $ldap_company_system_admin_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_system_admin_attribute_type],
    default => $ldap_company_system_admin_attribute_type,
  }

  $_ldap_company_system_admin_relation_attribute = $ldap_company_system_admin_relation_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_system_admin_relation_attribute],
    default => $ldap_company_system_admin_relation_attribute,
  }

  $_ldap_addresslist_search_filter = $ldap_addresslist_search_filter ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_addresslist_search_filter],
    default => $ldap_addresslist_search_filter,
  }

  $_ldap_addresslist_unique_attribute = $ldap_addresslist_unique_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_addresslist_unique_attribute],
    default => $ldap_addresslist_unique_attribute,
  }

  $_ldap_addresslist_unique_attribute_type = $ldap_addresslist_unique_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_addresslist_unique_attribute_type],
    default => $ldap_addresslist_unique_attribute_type,
  }

  $_ldap_addresslist_filter_attribute = $ldap_addresslist_filter_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_addresslist_filter_attribute],
    default => $ldap_addresslist_filter_attribute,
  }

  $_ldap_addresslist_search_base_attribute = $ldap_addresslist_search_base_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_addresslist_search_base_attribute],
    default => $ldap_addresslist_search_base_attribute,
  }

  $_ldap_addresslist_name_attribute = $ldap_addresslist_name_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_addresslist_name_attribute],
    default => $ldap_addresslist_name_attribute,
  }

  $_ldap_dynamicgroup_search_filter = $ldap_dynamicgroup_search_filter ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_dynamicgroup_search_filter],
    default => $ldap_dynamicgroup_search_filter,
  }

  $_ldap_dynamicgroup_unique_attribute = $ldap_dynamicgroup_unique_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_dynamicgroup_unique_attribute],
    default => $ldap_dynamicgroup_unique_attribute,
  }

  $_ldap_dynamicgroup_unique_attribute_type = $ldap_dynamicgroup_unique_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_dynamicgroup_unique_attribute_type],
    default => $ldap_dynamicgroup_unique_attribute_type,
  }

  $_ldap_dynamicgroup_filter_attribute = $ldap_dynamicgroup_filter_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_dynamicgroup_filter_attribute],
    default => $ldap_dynamicgroup_filter_attribute,
  }

  $_ldap_dynamicgroup_search_base_attribute = $ldap_dynamicgroup_search_base_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_dynamicgroup_search_base_attribute],
    default => $ldap_dynamicgroup_search_base_attribute,
  }

  $_ldap_dynamicgroup_name_attribute = $ldap_dynamicgroup_name_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_dynamicgroup_name_attribute],
    default => $ldap_dynamicgroup_name_attribute,
  }

  $_ldap_quota_userwarning_recipients_attribute = $ldap_quota_userwarning_recipients_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_quota_userwarning_recipients_attribute],
    default => $ldap_quota_userwarning_recipients_attribute,
  }

  $_ldap_quota_userwarning_recipients_attribute_type = $ldap_quota_userwarning_recipients_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_quota_userwarning_recipients_attribute_type],
    default => $ldap_quota_userwarning_recipients_attribute_type,
  }

  $_ldap_quota_userwarning_recipients_relation_attribute = $ldap_quota_userwarning_recipients_relation_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_quota_userwarning_recipients_relation_attribute],
    default => $ldap_quota_userwarning_recipients_relation_attribute,
  }

  $_ldap_quota_companywarning_recipients_attribute = $ldap_quota_companywarning_recipients_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_quota_companywarning_recipients_attribute],
    default => $ldap_quota_companywarning_recipients_attribute,
  }

  $_ldap_quota_companywarning_recipients_attribute_type = $ldap_quota_companywarning_recipients_attribute_type ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_quota_companywarning_recipients_attribute_type],
    default => $ldap_quota_companywarning_recipients_attribute_type,
  }

  $_ldap_quota_companywarning_recipients_relation_attribute = $ldap_quota_companywarning_recipients_relation_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_quota_companywarning_recipients_relation_attribute],
    default => $ldap_quota_companywarning_recipients_relation_attribute,
  }

  $_ldap_quotaoverride_attribute = $ldap_quotaoverride_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_quotaoverride_attribute],
    default => $ldap_quotaoverride_attribute,
  }

  $_ldap_warnquota_attribute = $ldap_warnquota_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_warnquota_attribute],
    default => $ldap_warnquota_attribute,
  }

  $_ldap_softquota_attribute = $ldap_softquota_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_softquota_attribute],
    default => $ldap_softquota_attribute,
  }

  $_ldap_hardquota_attribute = $ldap_hardquota_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_hardquota_attribute],
    default => $ldap_hardquota_attribute,
  }

  $_ldap_userdefault_quotaoverride_attribute = $ldap_userdefault_quotaoverride_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_userdefault_quotaoverride_attribute],
    default => $ldap_userdefault_quotaoverride_attribute,
  }

  $_ldap_userdefault_warnquota_attribute = $ldap_userdefault_warnquota_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_userdefault_warnquota_attribute],
    default => $ldap_userdefault_warnquota_attribute,
  }

  $_ldap_userdefault_softquota_attribute = $ldap_userdefault_softquota_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_userdefault_softquota_attribute],
    default => $ldap_userdefault_softquota_attribute,
  }

  $_ldap_userdefault_hardquota_attribute = $ldap_userdefault_hardquota_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_userdefault_hardquota_attribute],
    default => $ldap_userdefault_hardquota_attribute,
  }

  $_ldap_quota_multiplier = $ldap_quota_multiplier ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_quota_multiplier],
    default => $ldap_quota_multiplier,
  }

  $_ldap_addressbook_hide_attribute = $ldap_addressbook_hide_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_addressbook_hide_attribute],
    default => $ldap_addressbook_hide_attribute,
  }

  $_ldap_object_search_filter = $ldap_object_search_filter ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_object_search_filter],
    default => $ldap_object_search_filter,
  }

  $_ldap_filter_cutoff_elements = $ldap_filter_cutoff_elements ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_filter_cutoff_elements],
    default => $ldap_filter_cutoff_elements,
  }

  $_ldap_user_server_attribute = $ldap_user_server_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_user_server_attribute],
    default => $ldap_user_server_attribute,
  }

  $_ldap_company_server_attribute = $ldap_company_server_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_company_server_attribute],
    default => $ldap_company_server_attribute,
  }

  $_ldap_server_address_attribute = $ldap_server_address_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_server_address_attribute],
    default => $ldap_server_address_attribute,
  }

  $_ldap_server_http_port_attribute = $ldap_server_http_port_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_server_http_port_attribute],
    default => $ldap_server_http_port_attribute,
  }

  $_ldap_server_ssl_port_attribute = $ldap_server_ssl_port_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_server_ssl_port_attribute],
    default => $ldap_server_ssl_port_attribute,
  }

  $_ldap_server_file_path_attribute = $ldap_server_file_path_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_server_file_path_attribute],
    default => $ldap_server_file_path_attribute,
  }

  $_ldap_server_contains_public_attribute = $ldap_server_contains_public_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_server_contains_public_attribute],
    default => $ldap_server_contains_public_attribute,
  }

  $_ldap_server_proxy_path_attribute = $ldap_server_proxy_path_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_server_proxy_path_attribute],
    default => $ldap_server_proxy_path_attribute,
  }

  $_ldap_server_search_filter = $ldap_server_search_filter ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_server_search_filter],
    default => $ldap_server_search_filter,
  }

  $_ldap_server_unique_attribute = $ldap_server_unique_attribute ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_server_unique_attribute],
    default => $ldap_server_unique_attribute,
  }

  $_ldap_server_type_attribute_value = $ldap_server_type_attribute_value ? {
    "UNSET" => $zarafa::ldap::default[$_ldap_type][ldap_server_type_attribute_value],
    default => $ldap_server_type_attribute_value,
  }

  file { "servercfg":
    path => "/etc/zarafa/server.cfg",
    owner => "root",
    group => "root",
    mode => "0640",
    require => Package["zarafa-server"],
    content => template("zarafa/server.cfg.erb")
  }

  file { "ldapcfg":
    path => "/etc/zarafa/ldap.cfg",
    owner => "root",
    group => "root",
    mode => "0640",
    require => Package["zarafa-server"],
    content => template("zarafa/ldap.cfg.erb")
  }
}
