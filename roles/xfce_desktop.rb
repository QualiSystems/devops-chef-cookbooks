name "xfce_desktop"
description "xfce environment"
run_list "recipe[chef-ubuntu::install_xfce_desktop]", "recipe[chef-ubuntu::configure_x_to_use_xfce]", "recipe[chef-ubuntu::install_xrdp]"
