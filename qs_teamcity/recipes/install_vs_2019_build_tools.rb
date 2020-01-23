include_recipe 'chocolatey'

chocolatey_package 'visualstudio2019buildtools' do
  action :install
end