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


### Undo changes to a file that is unstaged

```
git checkout path/to/file/to/revert
```

### Undo changes to all files that are unstanged

```
git checkout -- .
```
src: http://stackoverflow.com/questions/52704/how-do-you-discard-unstaged-changes-in-git/52713#52713


### Unstage one files
```
git reset HEAD hello.rb
```


### Unstage all files
```
git reset
```
src: http://stackoverflow.com/questions/7103631/how-to-unstage-large-number-of-files-without-deleting-the-content/24542753#24542753


### Undo commit
```
$ git commit -m "Something terribly misguided"              (1)
$ git reset --soft HEAD~                                    (2)
<< edit files as necessary >>                               (3)
$ git add ...                                               (4)
$ git commit -c ORIG_HEAD                                   (5)
```


1. This is what you want to undo

2. This is most often done when you remembered what you just committed is incomplete, or you misspelled your commit message1, or both. Leaves working tree as it was before git commit.

3. Make corrections to working tree files.

4. git add whatever changes you want to include in your new commit.

5. Commit the changes, reusing the old commit message. reset copied the old head to .git/ORIG_HEAD; commit with -c ORIG_HEAD will open an editor, which initially contains the log message from the old commit and allows you to edit it. If you do not need to edit the message, you could use the -C option instead.

#*misc*

If you need to undo commit because you are on the wrong branch just stage changes and then
```
git checkout theRightBranch
```

src: http://stackoverflow.com/questions/927358/how-do-you-undo-the-last-commit/927386#927386


### git log shortned

```
$ git log --oneline
1333bca Updates Atom feed
9b8fae0 Fixes feed
38eef03 Adds tags insted of markdown
de53e1f Changes in License
```

### reset a certain file to a specific commit

```
$ git checkout de53e1f <file/name>
```
or you can replace <file/name> to `.` so everything is reset to that commit

### find all authors of the file and what they modified

```
git blame <filename>
```

### applying a patch
```
git commit ... && git format-patch -2 (-2 == last 2 commit)
```
then fpaste 000* :)

-----

# git ssh notes

### Check existing ssh keys
```
ls -al ~/.ssh
```

### Generating new ssh key

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
src:https://help.github.com/articles/generating-an-ssh-key/

### Copying ssh key to clipboard
*assumption is that xclip is installed*

```
xclip -sel clip < ~/.ssh/id_rsa.pub
```
