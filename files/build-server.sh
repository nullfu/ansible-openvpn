#!/bin/bash

cd /etc/openvpn/easy-rsa/

source ./vars
./clean-all
./build-dh
./pkitool --initca
./pkitool --server server
./pkitool client1
