ARG version
LABEL maintainer="Hayk Davtyan"
FROM alerta/alerta-web:${version}
COPY logo/* /web/
COPY plugins/alerta_prometheus.py /venv/lib/python3.8/site-packages
