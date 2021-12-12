#!/bin/sh

# Install PostgreSQL
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo 'deb http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main' | sudo tee /etc/apt/sources.list.d/postgres.list
sudo apt-get update
sudo apt-get install postgresql-14

# Install ZomboDB
# see https://github.com/zombodb/zombodb/blob/master/SOURCE-INSTALLATION.md#building-binary-artifacts-with-docker for building
# see https://github.com/zombodb/zombodb/blob/master/BINARY-INSTALLATION.md for configuration
wget https://github.com/timurb/zombodb-install/releases/download/pre-release/zombodb_ubuntu-bionic_pg14-3000.0.6_amd64.deb
sudo dpkg -i zombodb_ubuntu-bionic_pg14-3000.0.6_amd64.deb

# Install ElasticSearch
curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get update && sudo apt-get install elasticsearch
sudo systemctl start elasticsearch
