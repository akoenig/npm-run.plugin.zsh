# zsh-autocompletion-npm-run

> Autocompletion support for `npm run`.

## Installation

Install with npm or manually.

### Via npm

    $ npm install -g zsh-autocompletion-npm-run

After that you have to restart your `zsh`.

### Manually

1. Clone this repository to your favorite path (e.g. `~/zsh-extensions/zsh-autocompletion-npm-run`)
2. `source` the file in your `.zshrc`
3. Restart your `zsh`

```sh
# Your .zshrc
source $HOME/zsh-extensions/zsh-autocompletion-npm-run/zsh-autocompletion-npm-run.zsh
```

### Via antigen

    $ antigen bundle akoenig/zsh-autocompletion-npm-run

## Usage

Switch to your project (a.k.a. the place where the `package.json` lives):

    $ npm run <TAB>

Exemplary output:

    λ myproject → git master* → npm run
    build    watch    dev

## Author

Copyright 2015, [André König](http://andrekoenig.info) (andre.koenig@posteo.de)

