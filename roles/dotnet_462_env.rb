name "dotnet_462_env"
description "dot net environment"
run_list "recipe[chef-windows::install_all_vc_runtimes]", "recipe[chef-windows::install_dotnet_462]"
