install_chruby = <<-SCRIPT
  # Install prerequisites for Rubies
  # As per https://github.com/postmodern/chruby/wiki/Ruby
  apt-get update --quiet
  apt-get install -y build-essential bison zlib1g-dev libyaml-dev libssl-dev libgdbm-dev libreadline-dev libffi-dev

  # Install chruby
  # As per https://github.com/postmodern/chruby#install
  wget -qO chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
  tar -xzvf chruby-0.3.9.tar.gz
  cd chruby-0.3.9/
  make install
  rm -rf chruby-0.3.9

  # Make chruby available in the shell
  # As per https://github.com/postmodern/chruby#configuration
  echo 'source /usr/local/share/chruby/chruby.sh' >> /home/vagrant/.bashrc
  echo 'source /usr/local/share/chruby/auto.sh' >> /home/vagrant/.bashrc

  # Install ruby-install
  # As per https://github.com/postmodern/ruby-install#install
  wget -qO ruby-install-0.8.5.tar.gz https://github.com/postmodern/ruby-install/archive/v0.8.5.tar.gz
  tar -xzvf ruby-install-0.8.5.tar.gz
  cd ruby-install-0.8.5/
  make install
SCRIPT

install_ruby = <<-SCRIPT
  ruby-install ruby-2.7.6

  # Use chruby to install the correct version of bundler
  source /usr/local/share/chruby/chruby.sh
  chruby ruby-2.7.6
  gem install bundler:2.2.27
SCRIPT

system_config = [
  install_chruby,
  install_ruby
].join("\n")

Vagrant.configure("2") do |config|
  config.vagrant.plugins = "vagrant-fsnotify"

  config.vm.provider 'virtualbox' do |v|
    v.memory = 8192
    v.cpus = 6
  end
  config.vm.box = 'bento/ubuntu-20.04'
  config.vm.hostname = "gofreerange.test"
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.synced_folder ".", "/vagrant", fsnotify: true,
                                           exclude: [".git", "log", "tmp"]

  config.vm.provision :shell, inline: system_config
end
