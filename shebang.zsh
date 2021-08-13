#!/usr/bin/env zsh

echo "\n<<< starting $0 >>>\n"
echo "ZSH_VERSION = $ZSH_VERSION"
echo "The current shell is: $(ps $$ -ocomm=)"

exists git && echo "excellent" || echo "bogus"
exists nonexists && echo "excellent" || echo "bogus"

which exists
