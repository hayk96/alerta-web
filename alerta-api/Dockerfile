FROM --platform=linux/amd64 hayk96/alerta-api:latest
RUN  pip install git+https://github.com/alerta/alerta-contrib.git#subdirectory=plugins/prometheus && \
     pip install git+https://github.com/alerta/alerta-contrib.git#subdirectory=plugins/normalise