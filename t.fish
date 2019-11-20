# wrapper for https://github.com/dvkt/ldpl-todo
#
# usage:
#   t             # todo -list
#   t "fix app"   # todo -add "fix app"
#   t 13          # todo -check 13
#   t -clear      # todo -clear
#   t -h          # todo -h
function t
  if not type -q todo
    echo "> can't find `todo` in PATH"
    return 1
  end
  if [ -z "$argv" ]  # no arguments
    todo -list
  else
    set -l arg $argv[1]
    if test (string sub -l 1 -- $arg) = "-"  # starts with -, pass to todo
      todo $argv
    else if string match --quiet --regex '\d' (string sub -l 1 -- $arg) # arg is number
      todo -check $arg
    else
      todo -add $argv # arg is a string, add todo
    end
  end
end

