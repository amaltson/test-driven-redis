# InSpec test for recipe test-driven-redis::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe user('redis') do
  it { should exist }
end

describe file('/var/lib/redis') do
  it { should be_directory }
end

describe port(6379) do
  it { should be_listening }
end

describe service('redis@6379') do
  it { should be_enabled }
  it { should be_running }
end

describe command('redis-cli set chef_conf "is awesome"') do
  its(:exit_status) { should eq 0 }
end

describe command('redis-cli get chef_conf') do
  its(:stdout) { should match('is awesome') }
end
