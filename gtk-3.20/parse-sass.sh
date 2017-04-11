#!/usr/bin/bash

if [[ -f gtk.css ]]; then rm gtk.css; echo "rm gtk.css"; else echo "gtk.css not found"; fi
if [[ -f gtk-dark.css ]]; then rm gtk-dark.css; echo "rm gtk-dark.css"; else echo "gtk-dark.css not found"; fi
#bundle exec sass --update --sourcemap=none .
scss --update --sourcemap=none .

gsettings set org.mate.interface gtk-theme PaperUser; sleep 5
gsettings set org.mate.interface gtk-theme PaperMod
