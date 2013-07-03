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
  sudo unzip fonts.zip -d /usr/share/fonts
  ## Ubuntu doesn't have .fonts.conf in the user dir by default,
  ##  so we can just do a straight copy
  cp fonts.conf ~/.fonts.conf
fi

# User post-install actions
###########################
if $install_fonts ; then
  echo "To configure fonts on chrome, set the following:"
  echo "\tStandard Font - Sans"
  echo "\tSerif Font - Serif"
  echo "\tSans-serif font - Sans"
  echo "\tFixed-width font - monospace"
  echo "\tMinimum font-size - 11px"
fi
