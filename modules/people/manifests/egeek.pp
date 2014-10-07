class people::egeek {

  include android
  include appcleaner
  include atom
  #include btsync
  include chrome
  include dropbox
  #include eclipse::jee
  include evernote
  include firefox
  include iterm2::stable
  #include java
  #include mongodb
  include mysql
  include skitch
  include vagrant
  #include virtualbox
  include vlc
  include wget

#  class { 'eclipse::jee':
#    release => 'luna',
#    version => 'R'
#  }

  class { 'osx::dock::position':
    position => 'bottom'
  }

  class { 'osx::dock::icon_size':
    size => 48
  }

  class { 'osx::dock::hot_corners':
    bottom_right => "Put Display to Sleep"
  }

  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::finder::show_all_on_desktop
  include osx::no_network_dsstores

  osx::recovery_message { 'If this Mac is found, please call +44 7971 849 683': }

}
