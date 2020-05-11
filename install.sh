#!/bin/bash
function copy_config() {
  cp autostart ~/.config/openbox
  echo "Autostart Copied"
  cp menu.xml ~/.config/openbox
  echo "Menu Copied"
  cp rc.xml ~/.config/openbox
  echo "Keyboard Shortcuts Copied"
}

if [[ -d /home/$USER/.config/openbox ]]; 
then
  copy_config
else
  mkdir /home/$USER/.config/openbox
  copy_config
fi
