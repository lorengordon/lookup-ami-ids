FROM plus3it/tardigrade-ci:0.7.0

COPY lambda/requirements.txt /app/requirements.txt

RUN python -m pip install -r /app/requirements.txt

WORKDIR /ci-harness
ENTRYPOINT ["make"]
