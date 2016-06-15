### ssh config example
```
Host github-project1
    User git
    HostName github.com
    IdentityFile ~/.ssh/github.project1.key</p>
Host github-org
    User git
    HostName github.com
    IdentityFile ~/.ssh/github.org.key</p>
Host github.com
    User git
    IdentityFile ~/.ssh/github.key
    Port 22
```

### config is too open
`chmod 600 ~/.ssh/config`


### id_rsa are too open
`chmod 400 ~/.ssh/id_rsa `

http://nerderati.com/2011/03/17/simplify-your-life-with-an-ssh-config-file/
