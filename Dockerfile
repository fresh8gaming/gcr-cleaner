FROM google/cloud-sdk:319.0.0-slim

RUN apt-get update && apt-get install -y kubectl --no-install-recommends

RUN curl -L -o /usr/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && chmod +x /usr/bin/jq

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
