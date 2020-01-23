name "monodevelop_desktop_environment"
description "MonoDevelop Xfce desktop environment"
run_list "role[xfce_desktop]", "role[monodevelop]", "recipe[qs_packer_ubuntu::create_monodevelop_desktop_shortcut]"