# coinmarketcap-exporter (Fork optimized for OpenShift)

This is a fork of the original project made by [bonovoxly](https://github.com/bonovoxly). It just changes the running user to nobdoy in the Dockerfile.

A prometheus exporter for <https://coinmarketcap.com/>. Provides Prometheus metrics from the API endpoint of Coinmarketcap, such as US price, Bitcoin price, trading volume, etc. [Blog post found here](http://blog.billyc.io/2017/12/02/a-prometheus-exporter-for-cryptocurrency-values-using-the-coinmarketcap-api/).

When running this exporter with both Prometheus and Grafana, [you can create dashboards like](https://grafana.com/dashboards/3890):

![coinmarketcap-single-dashboard](https://github.com/bonovoxly/coinmarketcap-exporter/raw/master/img/coinmarketcap.png "coinmarketcap-exporter with Prometheus and Grafana")

# Developing

- Build the image:

```
docker build -t coinmarketcap-exporter:latest .
```

- Run it while listening on localhost:9101:

```
docker run --rm -p 127.0.0.1:9101:9101 coinmarketcap-exporter:latest
```

- Run it interactively:

```
docker run --rm -it --entrypoint=/bin/bash -p 127.0.0.1:9101:9101 -v ${PWD}:/opt/coinmarketcap-exporter coinmarketcap-exporter:latest
```

- Then to launch:

```
python coinmarketcap.py
```

# Thanks and Links

- Coinmarketcap API link - <https://coinmarketcap.com/api/>
- Prometheus exporters - <https://prometheus.io/docs/instrumenting/writing_exporters/>
- Writing JSON exporters in Python from Robust Perception - <https://www.robustperception.io/writing-json-exporters-in-python/>
- Grafana Dashboard - <https://grafana.com/dashboards/3890>

