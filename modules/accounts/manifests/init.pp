class accounts {
  $rootgroup = $osfamily ? {
      'Debian' => 'sudo',
      'RedHat' => 'wheel',
  }
  include accounts::groups
  user { 'ansible':
      ensure  => present,
      home    => '/home/ansible',
      shell   => '/bin/bash',
      managehome  => true,
      gid     => 'ansible',
      groups  => "$rootgroup",
  }
}
