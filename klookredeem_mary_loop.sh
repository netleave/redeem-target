#!/bin/bash

while true;
do
    M = $(date +%M)
    S = $(date +%S)
    if [$S -gt 58] || [$S -lt 1]
    then
        if ([$M -gt 58] && !([$S -eq 0])) || ([$M -eq 0] && [$S -eq 0])
        then
            (date +%d.%m.%y - %H:%M:%S); ('/home/maryhung2023/klookredeem_mary.sh' &); (sleep .04);
        else
            (date +%d.%m.%y - %H:%M:%S); ('/home/maryhung2023/klookredeem_mary.sh');
        fi
    fi
done
