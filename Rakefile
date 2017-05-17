require "rake/testtask"

Dir["lib/*.rb"].each{|f| load f}

Rake::TestTask.new do |t|
  t.warning = true
  t.verbose = true
end

desc 'Run tests'

task default: :test
