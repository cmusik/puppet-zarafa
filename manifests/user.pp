define zarafa::user($username = $title, $email, $fullname, $password = undef) {
  exec { "zarafa_admin_create_${username}":
    command => "/usr/bin/zarafa-admin -c '$username' -p foo -f '$fullname' -e '$email'",
    unless => "/usr/bin/zarafa-admin --details $username",
  }

  notify { "zarafa_user_${username}_created":
    message => "User $username created"
  }

  Exec["zarafa_admin_create_${username}"] -> Notify["zarafa_user_${username}_created"]
}
