#!/bin/bash

apt update
apt install -y nginx
systemctl start nginx
