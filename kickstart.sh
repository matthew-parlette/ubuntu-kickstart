#!/bin/bash


#################
# Configuration #
#################

install_fonts=true

# Development Libraries
dev="build-essential"

# IDE
ide="geany"

# Utilities
util="keepassx"

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
