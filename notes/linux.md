### change pasword
```
sudo passwd <user>
```


### watch cpu temperature
```
watch -n 1 -d sensors
```

### search for string
```
grep -nir 'string' .
``` 

### see how much ram the system has
```
sudo lshw -short -C memory
```
or just use htop


### see os information
```
cat /etc/*release*
```

### see info about sytem covers the above as well
```
# lshw | more
```
or better output

```
# lshw -short | less
```

