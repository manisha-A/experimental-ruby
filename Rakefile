require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'


namespace :features do
  Cucumber::Rake::Task.new(:local_tests) do |t|
    t.profile = "local" # Any valid command line option can go here.
  end

  Cucumber::Rake::Task.new(:ci_tests) do |t|
    t.profile = "ci"
  end
end


