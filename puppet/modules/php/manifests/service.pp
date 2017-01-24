class php::service {

    service{ 'httpd':
        enable => true,
        ensure => running,
        hasrestart => true,
    }

    exec { "firewall-cmd" :
        user => 'root',
        cwd => '/root',
        command => '/bin/firewall-cmd --add-service=http --permanent ; /bin/firewall-cmd --permanent --add-port=8080/tcp ; /bin/firewall-cmd --reload',
    }
    exec { "sysctl" :
        user => 'root',
        cwd => '/root',
        command => 'sysctl -p',
        path => '/bin/:/sbin/:/usr/bin/:/sbin/'
    }
}
