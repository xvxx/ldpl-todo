# ldpl todo

dirt simple todos cli.

## usage:

    $ todo -list             # list todos
    $ todo -add "Call Bob"   # add todo
    $ todo -edit             # open todo file in $EDITOR
    $ todo -check 2          # check off todo
    $ todo -clear            # remove checked todos

## install:

    lpm install std-list
    ldpl todo.ldpl -o=todo
    cp todo ~/bin

requires ldpl 4.3

## todo.txt:

this tool stores todos in ~/.todo

it is a plain text file with one todo per line.

lines beginning with "X " are treated as checked.

# wrapper:

i use a tiny fish wrapper around this library, found in [t.fish](./t.fish):

    $ t                # todo -list
    $ t "Call Terry"   # todo -add "Call Terry"
    $ t 2              # todo -check 2
    $ t -d             # todo -d

