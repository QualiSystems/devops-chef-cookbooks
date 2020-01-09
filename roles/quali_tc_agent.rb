name "quali_tc_agent"
description "Quali TeamCity Agent"
run_list "recipe[chef-windows::install_all_vc_runtimes]",
		 "recipe[chef-windows::install_dotnet_452]"