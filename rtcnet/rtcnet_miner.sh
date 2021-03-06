#!/bin/bash

GETH=~/"Library/Application Support/Mist/binaries/Geth/unpacked/geth"
#GETH=~/.config/Mist/binaries/Geth/unpacked/geth

BOOTNODE="enode://fb8d74bfecc6e1ed7d71e59f79b3bb48515617f284df8166f2be5914d8e28c904d91c1a8b1416f02d4043ff710e2c6c3a7de177b5cede6832b2ad6f39db5b6a3@10.49.0.7:30303"

# Run geth
"$GETH" --datadir ./chain-data  --networkid 7777 --rpc --rpcport 8545 --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcapi "eth,net,web3" --mine --minerthreads=1 --etherbase 0 --bootnodes=${BOOTNODE} --fast
