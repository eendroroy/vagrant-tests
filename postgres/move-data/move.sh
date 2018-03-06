#!/usr/bin/env bash

sudo service postgresql-10 stop

echo "data_directory = '/var/db/data/'" | sudo tee /var/lib/pgsql/10/data/postgresql.conf

sudo mkdir -p /var/database/data/
sudo rsync -av /var/lib/pgsql/10/data/ /var/database/data/
sudo chown postgres:postgres /var/database/ -R

sudo service postgresql-10 start
