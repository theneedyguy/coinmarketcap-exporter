FROM python:3.6
RUN pip install prometheus_client requests
RUN mkdir -p /opt/coinmarketcap-exporter
COPY ./coinmarketcap.py /opt/coinmarketcap-exporter/
WORKDIR /opt/coinmarketcap-exporter

USER nobody
EXPOSE 9101

ENTRYPOINT ["python3", "coinmarketcap.py"]
