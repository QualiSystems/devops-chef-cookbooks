name "monodevelop_environment"
description "MonoDevelop environment"
run_list "recipe[qs_packer_ubuntu::install_mono]", "recipe[qs_packer_ubuntu::build_monodevelop]"