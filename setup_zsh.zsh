#!/usr/bin/env zsh

echo "\n<<< Starting ZSH Setup >>>\n"

if grep -qx "/opt/homebrew/bin/zsh" "/etc/shells"; then
  echo "/opt/homebrew/bin/zsh already exists in /etc/shells"
else
  echo "Enter superuser (sudo) password to edit /etc/shells"
  echo "/opt/homebrew/bin/zsh" | sudo tee -a "/etc/shells" > /dev/null
fi

if [ "$SHELL" = "/opt/homebrew/bin/zsh" ]; then
  echo "\$SHELL is already /opt/homebrew/bin/zsh"
else
  echo "Enter user password to change default login shell"
  chsh -s "/opt/homebrew/bin/zsh"
fi

if sh --version | grep zsh > /dev/null; then
  echo "/private/var/select/sh has been linked to /bin/zsh"
else
  echo "Enter superuser (sudo) password to change sh to zsh"
  sudo ln -fvs /bin/zsh /private/var/select/sh
fi