require 'spec_helper'

describe package('git') do
  it { should be_installed }
end

describe package('ruby-dev') do
  it { should be_installed }
end

describe package('vim') do
  it { should be_installed }
end

describe package('screen') do
  it { should be_installed }
end

describe package('bundler') do
  it { should be_installed.by('gem') }
end

describe package('pry') do
  it { should be_installed.by('gem') }
end
