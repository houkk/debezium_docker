#!/bin/bash

# DB_CONFIG_DIR => /kafka/dbconfig

DB_CONFIG_DIR="/kafka/dbconfig"
cd $DB_CONFIG_DIR

// download all config files
wget --no-parent -r -l1 -nH -nd -P ./ http://host/$env/$PROJECT_NAME/config

exec /docker-entrypoint.sh start