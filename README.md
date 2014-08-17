# puppet-zarafa

## Overview

Module for installing and configuring a zarafa server with all needed components.
Tested on CentOS 6 and Ubuntu 14.04. Should work with others too.

## Module Description

Unlike other modules it is here possible to configure every options provided in the configuration.
Just look into the manpages or comments in the generated config files.

Support includes for:

 * LDAP and DB backend
 * Multiserver setups
 * License managment

## Setup

### Setup Requirements

To use this you need a repository with all zarafa packages available. Packages can be downloaded from
http://download.zarafa.com/community.

### Beginning with zarafa

## Usage

This modules defines several classes, one for each component of zarafa.

 * zarafa::server
 * zarafa::spooler
 * zarafa::dagent
 * zarafa::gateway
 * zarafa::search
 * zarafa::ical
 * zarafa::webapp
 * zarafa::monitor

To use them just put a them in your node definition like this:

```puppet
class { "zarafa::server":
  server_type    => "standalone",
  user_directory => "db",
  mysql_password => $mysql_password,
  server_name    => $hostname,
}
```

There are only two custom variables:

  | name           | possible values   |
  +----------------+-------------------+
  | server_type    | standalone, multi |
  | user_directory | db, openldap, ad  |

All other options can be taken from the normal configuration. Just check the manpages or website.

## Limitations

No Support for:

 * Postfix configuration (use thias-postfix)
 * MySQL configuration (use puppetlabs-mysql)


