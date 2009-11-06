require 'rake/contrib/sshpublisher'

task :default => :publish

task :publish do
  #server = "gofreerange.com"
  server = "kalv.co.uk"
  #remote_dir = "/var/www/gofreerange.com/beta"
  remote_dir = "/var/www/gofreerange/"
  local_dir = File.dirname(__FILE__)
  Rake::SshDirPublisher.new(server, remote_dir, local_dir).upload
  #sh %{ssh #{server} "chgrp -R deploy #{remote_dir}; chmod -R 775 #{remote_dir}"}
end