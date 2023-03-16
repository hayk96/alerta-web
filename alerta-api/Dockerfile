ARG version
FROM ghcr.io/alerta/alerta-api:${version}
ENV FLASK_SKIP_DOTENV=1
LABEL maintainer="Hayk Davtyan"
RUN apt-get update -y && apt-get install -y git \
    && pip install \
      git+https://github.com/hayk96/alerta-contrib.git#subdirectory=plugins/prometheus \
      git+https://github.com/hayk96/alerta-contrib.git#subdirectory=plugins/pagerduty \
      git+https://github.com/hayk96/alerta-contrib.git#subdirectory=plugins/enhance \
    && rm -rf /var/lib/apt/lists/*
COPY docker-entrypoint.sh /usr/local/bin
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 8080
CMD ["alertad", "run", "--host", "0.0.0.0", "--port", "8080"]