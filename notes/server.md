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

# Adding Swap

1. Check if swap exists with `swapon -s` or with `free -m`
2. Check storage for room `df -h`
3. Create the swapfile 4GB `sudo fallocate -l 4G /swapfile`
4. Verify swapfile is okay `ls -lh /swapfile`
5. Enabling swap file by 
```
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
```
Verify with `swapon -s` or `free -m`
6. Make swap permanent in fstab file `sudo nano /etc/fstab` paste 
```
/swapfile   swap    swap    sw  0   0
```

src: https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-centos-7
----

