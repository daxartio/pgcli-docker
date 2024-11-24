FROM python:3.12-slim-bookworm

COPY requirements.txt requirements.txt

RUN apt-get update && apt-get install -y --no-install-recommends \
    libpq-dev \
    && apt-get autoclean && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && pip install -r requirements.txt && rm requirements.txt

ENTRYPOINT [ "pgcli" ]

CMD [ "--help" ]
