# Minecuna Overview Map Builder

Built using the [Overviewer Project][1]

## Setting Up
Make sure you have a python virtual environment set up (there's an `.envrc`
included if you use [direnv][2]) and run:

    make setup


## Running
Get a copy of the world save file and place in this directory, then run:

    make generate

This will generate tiles to the `output` directory.


[1]: http://docs.overviewer.org/en/latest/
[2]: http://direnv.net/
