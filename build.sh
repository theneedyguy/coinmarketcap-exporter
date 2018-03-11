#!/bin/bash
sudo docker build . -t ckevi/coinmarketcap-exporter:latest
sudo docker tag ckevi/coinmarketcap-exporter:latest ckevi/coinmarketcap-exporter:1.0
sudo docker push ckevi/coinmarketcap-exporter:latest
sudo docker push ckevi/coinmarketcap-exporter:1.0

