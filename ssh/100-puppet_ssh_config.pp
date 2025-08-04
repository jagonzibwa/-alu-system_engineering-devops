#this is supposed to help open up my server without required a key using puppet
class ssh_config {
  file { '/etc/ssh/ssh_config':
    ensure  => present,
    content => "Host *\n  IdentityFile ~/.ssh/school\n  PasswordAuthentication no\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}