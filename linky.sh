#!/bin/bash

HOMEDIR=$HOME

linky_do() {
  CURRENTDIR=$1
  DIRNAME=$(echo "$CURRENTDIR" | sed 's/^.*\/\([^/]*\)$/\1/')
  echo "start linky $DIRNAME ----------"

  dotfiles=$(find $CURRENTDIR -maxdepth 1 -iregex '.*/\..+$' | sed 's/^.*\/\([^/]*\)$/\1/')
  
  if [[ $dotfiles ]]; then
  
    for dotfile in $dotfiles; do
      echo ln -s $CURRENTDIR/$dotfile $HOMEDIR/$dotfile
      ln -s -f $CURRENTDIR/$dotfile $HOMEDIR/$dotfile
    done
  
    echo "linky complete"
  
  else
    echo "Cannot linky if '$CURRENTDIR' is has no dots"
  fi
}

linky_do "/var/efs/analytics/nlu/dotfiles/vim"
linky_do "/var/efs/analytics/nlu/dotfiles/bash"
linky_do "/var/efs/analytics/nlu/dotfiles/tmux"
linky_do "/var/efs/analytics/nlu/dotfiles/R"


# HOMEDIR=$HOME
# CURRENTDIR=$(pwd -P)
# 
# symlink_dotfile() {
#   echo ln -s $CURRENTDIR/$1 $HOMEDIR/$1
# }
# 
# 
# # for FILE in $(find . -maxdepth 1 -iregex '.*/\..+$' | sed 's|./||'); do
# #   echo "$FILE"
# # done
# 
# 
# # dotfiles=$(ls -1 -A $CURRENTDIR 2> /dev/null)
# dotfiles=$(find . -maxdepth 1 -iregex '.*/\..+$' | sed 's|./||')
# 
# if [[ $dotfiles ]]; then
#   echo "Symlinking dotfiles..."
# 
#   for dotfile in $dotfiles; do
#     echo "$dotfile"
#     symlink_dotfile $dotfile
#   done
# 
#   echo "linky complete"
# 
# else
#   echo "Cannot linky if '$CURRENTDIR' is has no dots"
# fi




# SOURCE="/var/efs/analytics/nlu/project"
# if [ -L $HOMEDIR/project ] ; then
#     echo Symlink $HOMEDIR/project already exists
# else
#     echo "Creating symlink $HOMEDIR/project"
#     ln -s ${SOURCE} $HOMEDIR/project
# fi


linky_do_too() {
  CURRENTDIR=$1
  DIRNAME=$(echo "$CURRENTDIR" | sed 's/^.*\/\([^/]*\)$/\1/')
  echo "start linky $DIRNAME ----------"

  if [ -L $HOMEDIR/$DIRNAME ] ; then
    echo Symlink $HOMEDIR/$DIRNAME already exists
  else
    echo "Creating symlink $HOMEDIR/$DIRNAME"
    ln -s $CURRENTDIR $HOMEDIR/$DIRNAME
  fi

}

linky_do_too "/var/efs/analytics/nlu/project"
linky_do_too "/var/efs/analytics/nlu/vimwiki"
