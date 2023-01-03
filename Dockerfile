FROM python:3.11-slim-buster

RUN apt-get update && apt-get install -y --no-install-recommends \
    libpq-dev \
    && apt-get autoclean && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && pip install pgcli --only-binary psycopg2

ENTRYPOINT [ "pgcli" ]

CMD [ "-h" ]
