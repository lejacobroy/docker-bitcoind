#!/bin/bash
cd /Users/couteausuisse/GitHub/papaye/v2/docker-bitcoind 
docker build -t bitcoind .
docker run -v bitcoind-data:/bitcoin --name=bitcoind-node -p 8333:8333 -p 127.0.0.1:8332:8332 -e DISABLEWALLET=1 -e PRINTTOCONSOLE=1 -e RPCUSER=mysecretrpcuser -e RPCPASSWORD=mysecretrpcpassword bitcoind
docker run -v bitcoind-data:/bitcoin --name=bitcoind-node -p 8333:8333 -p 127.0.0.1:8332:8332 -e DISABLEWALLET=1 -e PRINTTOCONSOLE=1 bitcoind
