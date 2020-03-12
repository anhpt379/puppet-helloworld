class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }

  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }

  ssh_authorized_key {'root@master.puppet.vm':
    ensure => 'present',
    user   => 'root',
    type   => 'ssh-rsa',
    key    =>
    'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8i4KmVQJTSo1ArzDJR/V7sB+G3BYqKKPwOdPL2MWIqHM7Qnxhw1g77qS5g0HqLk8zjQjSEUAJdZNoEC+c9tZU2L6sZGauXTxwnj28x6sLseKvPFQvaCqhi+1XbW+9++jHz7ff4y3fnb3vDELYgydTq0+h/2qJZoY2gW/Uezdtfvt43OT6Xj1GimDjj0275tiTeZ2gPFyDZdgb0DwoXxq6oV1omY8odU0RHa28gyhMm9dfkrzjPLK6/B6vbOxViMYW4Gbm3pb7HzMsL0vefYTr7VaD2384aRLsakIpy2det3DMm2UxdGIXcXt+uAEic9s9uUP0F5E2DzVwLgNMTOjH',
  }
}
