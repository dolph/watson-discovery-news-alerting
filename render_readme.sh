#!/bin/bash
workon jinja
j2 readme.j2 readme.yml > templated-readme.md
gist --private --update 17370eb8f5bb2592f776507c591f59cf templated-readme.md
echo "https://gist.github.com/dolph/17370eb8f5bb2592f776507c591f59cf"
