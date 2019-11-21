#!/bin/bash

# Start all the things 
echo Starting Nomad using Server + Client file
cd ~
cp /vagrant/server-west.hcl /etc/nomad.d/nomad-server-b-3.hcl
sudo nohup nomad agent -config /etc/nomad.d/nomad-server-b-3.hcl &>nomad.log  &

echo Joining cluster
cd ~
nomad server join 172.16.1.201 &
