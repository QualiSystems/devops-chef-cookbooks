box_settings = node['box_settings']
platform_version = box_settings['platform_version']

apt_update
package 'Install Hyper-v integration services' do
  version = Gem::Version.new(platform_version)
  if version >= Gem::Version.new('17.04')
	package_name ['linux-image-virtual', 'linux-tools-virtual', 'linux-cloud-tools-virtual']
  elsif version >= Gem::Version.new('16.04')
	package_name ['linux-tools-virtual-lts-xenial', 'linux-cloud-tools-virtual-lts-xenial']
  end
end