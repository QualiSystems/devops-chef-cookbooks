name "xfce_desktop"
description "xfce environment"
run_list "recipe[qs_packer_ubuntu::install_xfce_desktop]", "recipe[qs_packer_ubuntu::configure_x_to_use_xfce]", "recipe[qs_packer_ubuntu::install_xrdp]"
