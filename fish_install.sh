#!/usr/bin/env bash
#install and config fish shell

install_config(){
  sudo apt-add-repository ppa:fish-shell/release-3
  sudo apt update
  sudo apt install fish -y
  curl -L https://get.oh-my.fish | fish
}

change_env(){
  echo /usr/bin/fish | sudo tee -a /etc/shells
  chsh -s /usr/bin/fish
}

get_omf(){
  ./omf_tweaks.fish
}

easy_setup(){
  install_config
  change_env
}

missing(){
  sudo apt-get install build-essential cmake ncurses-dev libncurses5-dev libpcre2-dev gettex
}

arg=$1
Output(){
  case  $arg in
    m) missing;;
    env) change_env;;
    omf) get_omf;;
    $1) easy_setup
  esac
}

Output


echo "to install themes, and tweaks, run ./fish_install.sh omf"
echo "if there are issues, try ./fish_install.sh m"