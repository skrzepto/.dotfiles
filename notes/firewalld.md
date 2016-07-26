```
firewall-cmd --state
```
view status of firewalld service (systemctl status firewalld)


```
firewall-cmd --zone=public --list-all
```
gets all info for the “public” zone


```
firewall-cmd --list-all-zones
```
shows all info for all zones


```
firewall-cmd --zone=public --add-port=80/tcp --permanent
```
adds port 80 to public zone


```
firewall-cmd --zone=public --add-service=http --permanent
```
adds service http to public zone


```
firewall-cmd --reload
```
run this after making changes


```
firewall-cmd --zone=public --remove-port=80/tcp --permanent
```
to remove port 80 from public zone


```
firewall-cmd --get-default-zone
```
shows default zone for firewall


```
firewall-cmd --get-active-zones
```
zones where network interfaces or sources are assigned
