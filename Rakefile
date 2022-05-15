# frozen_string_literal: true

require 'standalone_migrations'

StandaloneMigrations::Tasks.load_tasks

namespace :test do
  def configure_db
    config = File.join(File.expand_path(__dir__), 'db', 'config.yml')
    YAML.load(ERB.new(File.read(config)).result)
  end

  # connect to test database
  ActiveRecord::Base.establish_connection(configure_db['test'])

  desc 'Runs tests located inside test directory'
  task :test do
    Rake::Task['db:create'].execute
    Rake::Task['db:migrate'].execute

    # run tests
    sh 'rspec test/model/*.rb'

    # drop database after all the tests
    Rake::Task['db:drop'].execute
  end
end
