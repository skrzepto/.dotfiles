## Create user
```
sudo -u postgres createuser <name>
```


## Login
```
sudo -u postgres psql
```


## Connect to DB
once logged in
```
\connect <db_name>
```


## Drop DB
*not connected to the db and no other db connected*
```
drop database <db_name>
```
