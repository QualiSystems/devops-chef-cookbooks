box_settings = node['box_settings']

directory 'create unattend directory' do
  path 'C:\Windows\Panther\Unattend'
  recursive true
end

template 'C:/Windows/Panther/Unattend/unattend.xml' do
  source 'SysprepUnattended.xml.erb'
  variables({  	  
	  'username': ChefRubyHelper.get_var_or_default(box_settings, 'username'),
	  'user_password': ChefRubyHelper.get_var_or_default(box_settings, 'user_password'),
	  'user_description': ChefRubyHelper.get_var_or_default(box_settings, 'user_description', ''),
	  'time_zone': ChefRubyHelper.get_var_or_default(box_settings, 'time_zone', 'UTC'),
	  'locale': ChefRubyHelper.get_var_or_default(box_settings, 'locale', 'en-US')
  })
end