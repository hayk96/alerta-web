ARG version
FROM alerta/alerta-web:${version}
ARG PIP_PLUGINS_PATH="git+https://github.com/hayk96/alerta-contrib.git#subdirectory=plugins"
LABEL maintainer="Hayk Davtyan"
RUN pip install \
      ${PIP_PLUGINS_PATH}/prometheus \
      ${PIP_PLUGINS_PATH}/pagerduty \
      ${PIP_PLUGINS_PATH}/enhance
COPY logo/* /web/