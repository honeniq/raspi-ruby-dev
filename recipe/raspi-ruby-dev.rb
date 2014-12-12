# Example https://github.com/ryotarai/itamae/blob/master/spec/integration/recipes/default.rb#L15

# apt update
execute "apt-get update" do
  command "sudo apt-get update"
end

# apt/yum Packages
packages = []
packages << 'git'
packages << 'ruby-dev'
packages << 'vim'
packages << 'screen'

packages.each do |pkg|
  package pkg
end

# RubyGems
gems = []
gems << 'bundler'
gems << 'pry'

gems.each do |gem|
  execute "gem install #{gem}" do
    command "gem install #{gem}"
    not_if "gem list | grep #{gem}"
  end
end

# SSH authorized_keys
directory '~/.ssh' do
end

remote_file '~/.ssh/authorized_keys' do
  source './files/authorized_keys'
end
