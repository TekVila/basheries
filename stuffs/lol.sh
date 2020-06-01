#!/bin/bash

# A 'yes' command that spells inputs.
# ( 'lol y' == 'yes' but 'lol yes' != 'yes yes' )

function lol() {
    if [ -z "$*" ]; then
        local var="lol";
    else
        local var="$*";
    fi;
    while :;
    do
        fold -w 1 <<< $var;
    done
}
