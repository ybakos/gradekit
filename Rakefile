require "bundler/gem_tasks"

task :default => :test

desc "Run tests"
task :test do
  Dir['test/**/*_test.rb'].each { |file| require file }
end