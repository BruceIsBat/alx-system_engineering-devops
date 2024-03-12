# Puppet manifest to install Flask from pip3

# Ensure 'python3-pip' package is installed
package { 'python3-pip':
  ensure   => 'installed',
  provider => 'apt',
}

# Run pip3 install Flask
exec { 'install_flask':
  command => 'pip3 install Flask==2.1.0',
  path    => ['/usr/bin', '/bin'],
  require => Package['python3-pip'],
}

