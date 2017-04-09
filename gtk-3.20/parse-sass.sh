#!/usr/bin/bash

if [ -f gtk*.css ]; then rm gtk*.css; echo "rm *.css"; else "not found"; fi

#bundle exec sass --update --sourcemap=none .
scss --update --sourcemap=none .

gsettings set org.mate.interface gtk-theme PaperUser; sleep 5
gsettings set org.mate.interface gtk-theme PaperMod
