#!/bin/bash


#################
# Configuration #
#################

install_software=true
install_fonts=true
install_bashprompt=true

# Development Libraries
dev="build-essential git ruby"

# IDE
ide="geany"

# Utilities
util="keepassx mirage"

# Install software
##################
if $install_software ; then
  echo "Installing software..."
  "sudo apt-get install -y $dev $ide $util"
  echo "...ok"
fi

# Install and configure fonts
#############################
if $install_fonts ; then
  echo "Installing fonts..."
  sudo unzip fonts.zip -d /usr/share/fonts > /dev/null
  ## Ubuntu doesn't have .fonts.conf in the user dir by default,
  ##  so we can just do a straight copy
  cp fonts.conf ~/.fonts.conf
  echo "...ok"
fi

# Setup bash prompt
###################
if $install_bashprompt ; then
  echo "Setting up bash prompt..."
  cp bashprompt ~/.bashprompt
  #use printf: from http://stackoverflow.com/questions/8467424/echo-new-line-in-bash-prints-literal-n
  printf "\n#Setup bash prompt\nsource ~.bashprompt" >> ~/.bashrc
  echo "...ok"
fi

# User post-install actions
###########################
if $install_fonts ; then
  echo -e "\n\nTo configure fonts on chrome, set the following:"
  echo "------------------------------------------------"
  echo -e "\tStandard Font - Sans"
  echo -e "\tSerif Font - Serif"
  echo -e "\tSans-serif font - Sans"
  echo -e "\tFixed-width font - monospace"
  echo -e "\tMinimum font-size - 11px"
fi
