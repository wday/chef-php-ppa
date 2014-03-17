source 'https://rubygems.org'

gem 'rake'

group :lint do
  gem 'foodcritic', '~> 3.0'
  gem 'rubocop',    '~> 0.18'
end

group :unit do
  gem 'berkshelf',  '~> 2.0'
  gem 'chefspec',   '~> 3.3'
end

group :kitchen_common do
  gem 'test-kitchen'
end

group :kitchen_vagrant do
  gem 'kitchen-vagrant', '~> 0.14'
end

group :kitchen_cloud do
  gem 'kitchen-ec2'
end