#!/usr/bin/env bash

sudo cp postgresql.conf /var/lib/pgsql/10/data/postgresql.conf
sudo chown postgres:postgres /var/lib/pgsql/10/data/postgresql.conf
sudo service postgresql-10 restart
