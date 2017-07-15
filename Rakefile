# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

require "rake/testtask"

namespace :test do
  Rake::TestTask.new('regression' => 'regression:artefacts:generate') do |t|
    t.description = 'Run regression test'
    t.libs << "test"
    t.test_files = FileList["test/regression_test.rb"]
    t.verbose = true
  end

  namespace 'regression' do
    $:.unshift File.join(File.dirname(__FILE__), *%w[lib])
    require 'spider'

    ROOT_PATH = Pathname.new(File.expand_path('..', __FILE__))
    ARTEFACTS_PATH = ROOT_PATH.join('artefacts')

    namespace 'artefacts' do
      desc 'Clear regression test artefacts'
      task 'clear' do
        FileUtils.rm_rf(ARTEFACTS_PATH)
      end

      desc 'Generate regression test artefacts'
      task 'generate' => 'clear' do
        spider = Spider.new(artefacts_path: ARTEFACTS_PATH)
        spider.run
        system(%{find #{ARTEFACTS_PATH} -type f -name '*.html' -depth 1 -exec tidy -m --wrap 0 --sort-attributes alpha --indent auto {} \\;})
        system(%{find #{ARTEFACTS_PATH} -type f -name '*.xml' -depth 1 -exec tidy -m --wrap 0 --sort-attributes alpha --indent auto --input-xml 1 {} \\;})
      end
    end
  end
end
