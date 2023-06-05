#!/bin/bash

cd ./wp-core/wp
source ../.env


iexec workerpool deploy  --wallet-file=wallet-core.json --keystoredir=../ --password=setim

#iexec order init --workerpool
iexec order sign --workerpool --wallet-file=wallet-core.json --keystoredir=../ --password=setim
iexec order publish --workerpool --wallet-file=wallet-core.json --keystoredir=../ --password=setim
