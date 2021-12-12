# ZomboDB installation

See [install.sh](install.sh) for installation of packages.

Follow original upstream docs for creation of extension in PG and tuning the setup: https://github.com/zombodb/zombodb/blob/master/BINARY-INSTALLATION.md#postgresqlconf-settings-to-consider

## Configure PostgreSQL for accessing from inside Docker container

Update `/etc/postgresql/14/main/postgresql.conf`:
```
listen_addresses = 'localhost,172.17.0.1'
```

Learn the address by the following command:
```
ip a show dev docker0
```
