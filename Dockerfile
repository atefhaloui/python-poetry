ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}

LABEL maintainer="Atef Haloui <atef.haloui@gmail.com>"

ARG POETRY_VERSION
ENV POETRY_VERSION=${POETRY_VERSION}

RUN set -eu; \
    curl -sSL https://install.python-poetry.org \
        | python - --install-path /usr/local/bin --version "${POETRY_VERSION}"; \
    /root/.local/bin/poetry self add poetry-plugin-export; \
    rm -rf ~/.cache;

ENV PATH="/usr/local/bin:$PATH"
