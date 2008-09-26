# templates.pp
# All server templates for various flavors of templates defined here

class baseclass {
    include $operatingsystem,
        cron,
        dns,
        puppetclient,
        ssh,
        unixadmin_users,
        user_root,
        virt_all_users,
}

node default {
    include baseclass
}

node desktop {
     	include baseclass

  	package { sudo: ensure => installed }
  	package { apg: ensure => installed }
  	package { enigmail: ensure => installed }
  	package { lsb-release: ensure => installed }

}

