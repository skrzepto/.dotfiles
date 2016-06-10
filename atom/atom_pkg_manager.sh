#!/bin/bash
# Bash Menu Script Example


save_packages () {
  # this will save the atom packages
  apm list --installed --bare > package-list.txt
}
install_packages () {
  # this will install from the text
  apm install --packages-file package-list.txt
}

PS3='Please enter your choice: '
options=("Save Atom packages" "Install Atom packages" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Save Atom packages")
            save_packages
            break
            ;;
        "Install Atom packages")
            install_packages
            break
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
