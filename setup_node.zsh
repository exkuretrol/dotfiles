#!/usr/bin/env zsh

echo "\n<<< Starting Node Setup >>>\n"

if command -v node | grep -q /opt/homebrew/bin/node; then
  # If node (Installed by brew) didn't removed, it 
  # will conflicting with node (Installed by n), because 
  # the priority of brew-installed node always higher 
  # than n-installed node.
  # https://stackoverflow.com/a/26919540
  # TODO: remove this in the future.
  echo "Removing latest node dependencied by prettier with brew..."
  brew uninstall --ignore-dependencies node
  rm -f /opt/homebrew/bin/npm
  rm -rf /opt/homebrew/lib/node_modules/
  brew cleanup
fi

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node & NPM with n..."
  n latest
fi
