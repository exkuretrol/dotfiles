echo 'Hello from .zshenv'

function exists() {
  # `command -v` is similar to `which`
  # https://stackoverflow.com/a/677212
  command -v $1 > /dev/null 2>&1;

  # more explicitly written:
  # command -v $1 > /dev/null 2> /dev/null;
}