# PostgreSQL docker-compose

The example project to start PostgreSQL in Replication mode.

_Base on tutorial from https://medium.com/swlh/postgresql-replication-with-docker-c6a904becf77_

## How to use

```shell
sh docker-init.sh
```

## How it works?

1. Clear DB data folder.
2. Start main node.
3. Prepare Replica config from main node.
    1. Create replica user
    2. Backup main data for initial to replica node.
    3. Init replica node
        1. Copy replica config file such as url to connect to main node.
        2. Override `pg_hba.conf` in main node.
4. Restart main node to apple config
5. Start replica node.
6. Validate by print replication slot.