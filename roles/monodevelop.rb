name "monodevelop_env"
description "MonoDevelop environment"
run_list "role[xfce_desktop]", "recipe[chef-ubuntu::install_mono]", "recipe[chef-ubuntu::build_monodevelop]", "recipe[chef-ubuntu::create_monodevelop_desktop_shortcut]"
