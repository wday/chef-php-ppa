require 'rubocop/rake_task'
require 'foodcritic'
require 'kitchen'

# Style tests. Rubocop and Foodcritic
namespace :style do
  desc 'Run Ruby style checks'
  Rubocop::RakeTask.new(:ruby)

  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef) do |t|
    t.options = {
      fail_tags: ['any'],
      tags: ['~FC005']
    }
  end
end

# Integration tests w/ Kitchen
namespace :integration do

  task :vagrant do
    Kitchen.logger = Kitchen.default_file_logger
    Kitchen::Config.new.instances.each do |instance|
      instance.test(:always)
    end
  end
end

desc 'Default, lint and style tasks only'
task default: ['style']

desc 'Lint and Style Cop!'
task style: ['style:chef', 'style:ruby']

desc 'Integration tests using Vagrant and Test Kitchen'
task integration: ['style', 'integration:vagrant']
