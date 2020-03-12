node default {
  file {'/root/README.md':
    ensure  => file,
    content => 'This is a README',
    owner   => 'vagrant'
  }

  file {'/root/README.md':
    owner => 'root',
  }
}
