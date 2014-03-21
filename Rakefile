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

  desc 'Test Kitchen using EC2 Cloud'
  task :cloud do
    run_kitchen = true

    if ENV['TRAVIS'] == 'true' && ENV['TRAVIS_PULL_REQUEST'] != 'false'
      run_kitchen = false
    end

    if run_kitchen
      Kitchen.logger = Kitchen.default_file_logger
      @loader = Kitchen::Loader::YAML.new(project_config: './.kitchen.cloud.yml')
      config = Kitchen::Config.new( loader: @loader)
      config.instances.each do |instance|
        instance.test(:always)
      end
    end
  end

  desc 'Test Kitchen using Vagrant'
  task :vagrant do
    Kitchen.logger = Kitchen.default_file_logger
    Kitchen::Config.new.instances.each do |instance|
      instance.test(:always)
    end
  end
end

desc 'Output environment variables'
puts '--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--'
puts "AWS_ACCESS_KEY_ID" + ENV['AWS_ACCESS_KEY_ID']
puts "AWS_SECRET_ACCESS_KEY" + ENV['AWS_SECRET_ACCESS_KEY']
puts "AWS_KEYPAIR_NAME" + ENV['AWS_KEYPAIR_NAME']
puts "AWS_USERNAME" + ENV['AWS_USERNAME']
puts "EC2_SSH_KEY_PATH" + ENV['EC2_SSH_KEY_PATH']
puts "HIPCHAT_API_TOKEN" + ENV['HIPCHAT_API_TOKEN']
puts "HIPCHAT_ROOM" + ENV['HIPCHAT_ROOM']
puts '--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--'

desc 'Default, lint and style tasks only'
task default: ['style']

desc 'Travis testing using ec2'
task travis: ['style', 'integration:cloud']

desc 'Lint and Style Cop!'
task style: ['style:chef', 'style:ruby']

desc 'Integration tests using Vagrant and Test Kitchen'
task integration: ['style', 'integration:vagrant']
