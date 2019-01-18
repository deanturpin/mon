#!/bin/bash

readonly vendor=${1//:/}

echo vendor $vendor

grep -i $vendor /usr/share/ieee-data/oui.txt
