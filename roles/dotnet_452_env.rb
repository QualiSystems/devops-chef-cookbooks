name "dotnet_452_env"
description "dot net environment"
run_list "recipe[qs_packer_windows::install_all_vc_runtimes]", "recipe[qs_packer_windows::install_dotnet_452]"
