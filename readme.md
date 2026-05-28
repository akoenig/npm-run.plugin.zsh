> [!NOTE]
> This project is preserved as a historical open-source project. It is not actively maintained, and its dependencies or recommended practices may be outdated.
>
> I’m keeping it public because it may still be useful as reference material. If you rely on it in production, please review the code carefully and consider maintaining your own fork.

# npm-run.plugin.zsh

> Autocompletion support for `npm run`.

## Installation

Install with npm or manually.

### Via npm

    $ npm install -g npm-run.plugin.zsh

After that you have to restart your `zsh`.

**Important note:** `npm-run.plugin.zsh` utilizes `GNU Grep` under the hood. Please make sure that you have the _GNU Command Line Tools_ installed.

### Manually

1. Clone this repository to your favorite path (e.g. `~/zsh-extensions/npm-run.plugin.zsh`)
2. `source` the file in your `.zshrc`
3. Restart your `zsh`

```sh
# Your .zshrc
source $HOME/zsh-extensions/npm-run.plugin.zsh/npm-run.plugin.zsh
```

### Via antigen

    $ antigen bundle akoenig/npm-run.plugin.zsh

## Usage

Switch to your project (a.k.a. the place where the `package.json` lives):

    $ npm run <TAB>

Exemplary output:

    λ myproject → git master* → npm run
    build    watch    dev

## Author

Copyright 2015, [André König](http://andrekoenig.info) (andre.koenig@posteo.de)