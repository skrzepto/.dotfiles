# Adding ssh authentication

Log into server

```
mkdir -p ~/.ssh/
vi ~/.ssh/authorized_keys
# paste in key

chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa

systemctl restart sshd
```

On client type
`xclip -sel clip < ~/.ssh/id_rsa.pub` to copy public key and paste it into vi above

----

# Removing SSH Password login

```
vi /etc/ssh/sshd_config

# find keyword `Password` and set it to no

```

----




