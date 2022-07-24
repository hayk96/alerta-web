ARG version
FROM alerta/alerta-web:${version}
LABEL maintainer="Hayk Davtyan"
COPY logo/* /web/
COPY plugins/alerta_prometheus.py /venv/lib/python3.8/site-packages
