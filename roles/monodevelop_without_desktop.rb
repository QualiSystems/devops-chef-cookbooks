name "monodevelop_environment_without_desktop"
description "MonoDevelop environment"
run_list "role[monodevelop]", "recipe[qs_packer_ubuntu::install_mandatory_monodevelop_desktop_pacakges]"