box_settings = node['box_settings']
ssh_user = box_settings['ssh_user']
ssh_user_group = box_settings['ssh_user_group']
home_folder = box_settings['home_folder']
monodevelop_version = node['monodevelop_version']
monodevelop_directory = "#{home_folder}/monodevelop"
monodevelop_git_repo_dir = "#{monodevelop_directory}/#{monodevelop_version}"

apt_update

package 'install git' do
	package_name 'git'
end

package 'install monodevelop build dependencies and gdb' do
  package_name ['autoconf', 'automake', 'cmake', 'fsharp', 'git', 'gnome-sharp2', 'gtk-sharp2', 'libssh2-1-dev', 'zlib1g-dev', 'intltool', 'gdb']
end

directory monodevelop_directory do
  owner ssh_user
  group ssh_user_group
  mode '0775'
end

execute "clone monodevelop #{monodevelop_version} git repository" do
  user ssh_user
  cwd monodevelop_directory
  live_stream true
  command "git clone -b monodevelop-#{monodevelop_version} --depth=1 https://github.com/mono/monodevelop.git #{monodevelop_version}"
end

execute 'configure monodevelop build' do
  user ssh_user
  cwd monodevelop_git_repo_dir
  live_stream true
  command './configure --profile=stable --enable-release'
end

execute 'build monodevelop' do
  user ssh_user
  cwd monodevelop_git_repo_dir
  live_stream true
  command 'make > monodevelop_build_output.txt' # This is a workaround for a packer bug. Packer is not realizing the the chef-solo process has exited because of this specific output and keeps waiting forever.
end