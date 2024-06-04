#!/usr/bin/env bash

stowit() {
    app=$1
    new=$2
    # -v verbose
    # -R recursive
    # -t target
    echo Stow config for $app
    stow -v -R -t ${new} ${app}
}


home_dir=(
  tmux
  tridactyl
  vim
  )

config_dir=(
  nvim
  )

echo "HOME=$HOME"
echo "Stowing apps"

for app in ${home_dir[@]}; do
  stowit $app $HOME 
done
for app in ${config_dir[@]}; do
  dir_name=${HOME}/.config/${app}
  if [ ! -d $dir_name ]; then 
    mkdir -p $dir_name
  fi
  stowit $app $dir_name
done

echo ""
echo "##### ALL DONE"
