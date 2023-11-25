exec { 'kill_killmenow_process':
  command     => '/usr/bin/pkill -f "killmenow"',
  path        => '/usr/local/bin:/usr/bin',
  refreshonly => true,
  subscribe   => File['/path/to/your/manifest.pp'],
}
