class runit( $ensure = present ) {

  #This following case condition is due to that we have not found rpm repo containing runit rpm
  case $::osfamily {
    'Debian': {
      package { runit: ensure => $ensure }
    }
  }

  if $ensure == present {
    file {
      '/etc/sv':
        ensure => directory,
        ;
      '/etc/service':
        ensure => directory,
        ;
    }

  }

}
