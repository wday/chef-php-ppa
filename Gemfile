source 'https://rubygems.org'

gem 'rake'

group :lint do
  gem 'foodcritic'
  gem 'rubocop'
  gem 'travis-lint'
end

group :unit do
  gem 'berkshelf',  '~> 2.0'
  gem 'chefspec'
end

group :kitchen_common do
  gem 'test-kitchen'
end

group :kitchen_vagrant do
  gem 'kitchen-vagrant'
end

group :kitchen_cloud do
  gem 'kitchen-ec2'
end