# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/clean'

begin
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
rescue LoadError
  task :rubocop do
    warn 'RuboCop is disabled'
  end
end

begin
  require 'yard'
  require 'yard/rake/yardoc_task'
  YARD::Rake::YardocTask.new do |task|
    task.files = FileList['./lib/**/*.rb']
  end
rescue LoadError
  task :yard do
    warn 'YARD is disabled'
  end
end

CLEAN.include('**/*~')
