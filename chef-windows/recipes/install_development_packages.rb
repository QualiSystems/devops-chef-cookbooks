include_recipe 'chocolatey'

chocolatey_package 'everything' do
  action :install
end

chocolatey_package 'spacesniffer' do
  action :install
end

chocolatey_package 'winrar' do
  action :install
end

chocolatey_package 'sql-server-management-studio' do
  action :install
end