include_recipe 'chocolatey'

chocolatey_package 'googlechrome' do
  action :install
end

chocolatey_package 'sql-server-2017' do
  action :install
end

chocolatey_package 'nodejs' do
  action :install
end

chocolatey_package 'python2' do
  action :install
end

chocolatey_package 'vcpython27' do
  action :install
end