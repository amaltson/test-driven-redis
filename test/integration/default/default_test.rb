# InSpec test for recipe test-driven-redis::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe user('redis') do
  it { should exist }
end

describe file('/var/lib/redis') do
  it { should be_directory }
end
