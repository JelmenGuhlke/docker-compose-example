#Backup main
pg_basebackup -D /var/lib/postgresql/data-replica -S replication_slot_replica1 -X stream -P -U replicator -Fp -R
