# # encoding: utf-8

# Inspec test for recipe test-driven-redis::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/
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

describe command('/usr/local/bin/redis-cli set web_unleashed "is awesome"') do
  its(:exit_status) { should eq 0 }
end

describe command('/usr/local/bin/redis-cli get web_unleashed') do
  its(:stdout) { should match('is awesome') }
end
