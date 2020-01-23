include_recipe 'chocolatey'

chocolatey_package 'dotnet4.6.2' do
  action :install
  returns [0, 3010]
end