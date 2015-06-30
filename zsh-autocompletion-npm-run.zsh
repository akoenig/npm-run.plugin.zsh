#!/usr/bin/env zsh

#
# zsh-autocompletion-npm-run
# 
# Autocompletion for `npm run scripts`
#
# Copyright(c) 2015 André König <andre.koenig@posteo.de>
# MIT Licensed
# 

function $$npmrun_completion() {
    compls=$([ -s "./package.json" ] && cat package.json | tr -d " \t\n\r" | grep -oP 'scripts\"\:\{(.*?)\}' | sed -e "s/scripts\"\://g" | sed -e "s/{//g" | grep -oP '\"(.*?):\"' | sed -e 's/\"//    g' | sed -e 's/\://g' | sed -e 's/\,//g' | sort)

    completions=(${=compls})
    compadd -- $completions
}

compdef $$npmrun_completion npm run

