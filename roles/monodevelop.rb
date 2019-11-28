name "monodevelop_environment"
description "MonoDevelop environment"
run_list "recipe[chef-ubuntu::install_mono]", "recipe[chef-ubuntu::build_monodevelop]"