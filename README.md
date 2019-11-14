# ldpl todo

dirt simple todos cli.

## usage:

    $ todo -list             # list todos
    $ todo -add "Call Bob"   # add todo
    $ todo -edit             # open todo file in $EDITOR
    $ todo -check 2          # check off todo
    $ todo -clear            # remove checked todos

all commands have single letter versions too.

-add is -a, -edit is -e, etc.  check is -c. clear is -d.

## example:

    $ todo -list
    -> no todos in ~/.todo
    $ todo -add Show example usage
    -> added "Show example usage"
    $ todo -add Eat a Pop Tart
    -> added "Eat a Pop Tart"
    $ todo -list
      1. Show example usage
      2. Eat a Pop Tart
    $ todo -add Write a poem about dinosaurs
    -> added "Write a poem about dinosaurs"
    $ todo -check 2
      1. Show example usage
    X 2. Eat a Pop Tart
      3. Write a poem about dinosaurs
    $ todo -clear
      1. Show example usage
      2. Write a poem about dinosaurs

## install:

requires [ldpl 4.3](https://github.com/Lartu/ldpl/tree/4.3):

    lpm install std-list
    ldpl todo.ldpl -o=todo
    cp todo ~/bin

## todo.txt:

this tool stores todos in ~/.todo

it is a plain text file with one todo per line.

lines beginning with "X " are treated as checked.

# wrapper:

i use a tiny fish wrapper with this program, [t.fish](./t.fish):

    $ t                # todo -list
    $ t "Call Terry"   # todo -add "Call Terry"
    $ t 2              # todo -check 2
    $ t -d             # todo -d

