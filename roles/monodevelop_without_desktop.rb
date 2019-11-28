name "monodevelop_environment_without_desktop"
description "MonoDevelop environment"
run_list "role[monodevelop]", "recipe[chef-ubuntu::install_mandatory_monodevelop_desktop_pacakges]"