### make a new virtual env easy way
make sure to have this installed `sudo dnf install python-virtualenvwrapper`

```
$ mkvirtualenv <name>
```

### to work on virtualenv
```
$ workon <name>
```

### location of virtualenv
`~/.virtualenvs/`

### run nosetest with coverage in root of project
*change the <name> tag
`PYTHONPATH=. nosetests --with-coverage --cover-erase --cover-package=<name> --cover-html`
