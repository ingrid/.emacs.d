#!/bin/sh

pyflakes $1
echo "## pyflakes above, pep8 below ##"
pep8 --repeat $1