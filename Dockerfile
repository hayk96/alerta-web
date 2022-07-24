FROM alerta/alerta-web:8.7.0
COPY logo/* /web/
COPY plugins/alerta_prometheus.py /venv/lib/python3.8/site-packages
