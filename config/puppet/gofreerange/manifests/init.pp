class gofreerange {
  define web($domain, $deploy_to, $environment) {
    include gofreerange

    include freerange
    include gofreerange::users

    include rack
    rack::host {$domain:
      content => template("gofreerange/vhost.erb"),
      ensure => enabled
    }

    include xml
  }
}