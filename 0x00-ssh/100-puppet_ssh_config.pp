#turns off password auth and then uses hbtn key


include stdlib
file_line { 'Declare identity file':
  ensure => 'present',
  path    => '/etc/ssh/ssh_config',
  line    => '    IdentityFile ~/.ssh/school',
  replace => true,
}

file_line { 'Turn off passwd auth':
 ensure => 'present',
 path    => '/etc/ssh/ssh_config',
 line    => '    PasswordAuthentication no',
 replace => true,
}
