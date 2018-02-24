class apache::usercreation
(
$usr = $apache::usr,
$grp = $apache::grp,
)
{
user { $usr :
name => $usr,
groups => $grp,
managehome => true,
home => '/home/httpduser',
ensure => 'present',
#shell => '/bin/bash/',
require => Group[$grp],
}

group { $grp :
name => $grp,
ensure => 'present',
}

}
