apt_update 'update apt' do
  action :update
end

package 'install base server packages' do
	package_name ['ntp', 'cifs-utils', 'python-pip', 'python-virtualenv']
end