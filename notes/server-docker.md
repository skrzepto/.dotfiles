# Mumble server

*Docker*

```
docker pull luzifer/mumble
docker run -d -p 64738:64738 -p 64738:64738/udp luzifer/mumble
```

TODO: Add volume map for data or should we not worry about this? 


*Firealld*

paste below segment into `/etc/firewalld/services/murmur.xml` 

```
<?xml version="1.0" encoding="utf-8"?>
<service>
    <short>Murmur</short>
    <description>Mumble Server (Murmur)</description>
    <port protocol="tcp" port="64738" /><!-- Reminder: Update /etc/murmur.ini so that it uses the same ports -->
    <port protocol="udp" port="64738" />
</service>

```

and then run

```
sudo firewall-cmd --permanent --add-service=murmur
sudo firewall-cmd --reload
```
