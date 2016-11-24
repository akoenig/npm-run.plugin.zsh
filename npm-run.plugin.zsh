#
# npm-run.plugin.zsh
# 
# Autocompletion for `npm run scripts`
#
# Copyright(c) 2015 André König <andre.koenig@posteo.de>
# MIT Licensed
# 

function _scripts () {
     compls=$([[ -s $PWD/package.json ]] || return 0 && cat package.json | tr -d " \t\n\r" | grep -oP 'scripts\"\:\{(.*?)\}' | sed -e "s/scripts\"\://g" | sed -e "s/{//g" | grep -oP '\"(.*?):\"' | sed -e 's/\"//g' | sed -e 's/\:$//g' | sed -e 's/\,//g' | sort)

     completions=(${=compls})
    compadd -- $completions
}

compdef _scripts npm run
