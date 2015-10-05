
# this will save the atom packages
apm list --installed --bare > package-list.txt


# this will install from the text
apm install --packages-file package-list.txt

