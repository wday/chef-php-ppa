require 'minitest/autorun'

describe 'default' do
  it 'has created ondrej-php-precise.list' do
    assert File.exists?('/etc/apt/sources.list.d/ondrej-php-precise.list')
  end
end
