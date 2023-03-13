FROM --platform=linux/amd64 ghcr.io/alerta/alerta-api

RUN apt-get update -y && \
    apt-get install git -y

RUN  pip install git+https://github.com/hayk96/alerta-contrib.git#subdirectory=plugins/prometheus && \
     pip install git+https://github.com/hayk96/alerta-contrib.git#subdirectory=plugins/pagerduty && \
     pip install git+https://github.com/hayk96/alerta-contrib.git#subdirectory=plugins/enhance

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 8080

ENV FLASK_SKIP_DOTENV=1

CMD ["alertad", "run", "--host", "0.0.0.0", "--port", "8080"]