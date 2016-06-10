## git cmds that i frequently use

### Squashing your last commits


Below examples are for squashing the last 3 commits

Want to write a new git commit message

```
git reset --soft HEAD~3 &&
git commit
```

If you want to concatenate all the git messages together

```
git reset --soft HEAD~3 &&
git commit --edit -m"$(git log --format=%B --reverse HEAD..HEAD@{1})"
```
src: http://stackoverflow.com/questions/5189560/squash-my-last-x-commits-together-using-git/5201642#5201642


### Rebase branch with the one you want to merge with

```
git pull --rebase upsteam <which branch>
# you may need to force the push
git push -f origin <which branch>
```

Useful for pull requests so its a nice linear history


### See all remotes

```
git remote -v
```

### Set new url for remote

```
git remote set-url <branch> <url>
```

### Add new remote

```
git add remote <remote_name> <url>
```
