#!/usr/bin/env bash

NEW_DATA_DIR='/var/database/data/'

sudo service postgresql-10 stop

echo "data_directory = '${NEW_DATA_DIR}'" | sudo tee -a /var/lib/pgsql/10/data/postgresql.conf

sudo mkdir -p ${NEW_DATA_DIR}
sudo rsync -av /var/lib/pgsql/10/data/ ${NEW_DATA_DIR}
sudo chown postgres:postgres /var/database/ -R

sudo service postgresql-10 start
