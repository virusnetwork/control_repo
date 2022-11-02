class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC3N27tbmC48qKJb/Wf0p6GCfCJXArEh2XpnMmt+K7E42YtyzfEWqaXCm8qT8qr7xhyBI8Aku6WvaHXBnTwDDxeo3hDWx08aN1liAHFZMb4LNiTsxdy5UHiHH6bdQpGXix9WR4t4As3Koujw/lUd3GxNQxV9pssQNjeKeIo6jvv/pgtTrseyJo3f4zF/04K2kfVkASj9aJhDSdxxZSVgPIcvpIWOc/3fFxbQR7qtWimHiGTOB8a7EbvvnASO2l0gLPrSJaQANwhicR+Mk0OnRxrKIh8Qb6SK5uMzK6ABmEFJjabslNURV4P/k+/rHPv9p2ccxp9KLHGDlsP75Zvtx+f',
  }  
}
