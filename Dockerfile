ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}

LABEL maintainer="Atef Haloui <atef.haloui@gmail.com>"

ARG POETRY_VERSION
ARG POETRY_USER=poetry
ARG POETRY_UID=1000
ARG POETRY_GID=1000
ENV POETRY_VERSION=${POETRY_VERSION}

RUN set -eu; \
    curl -sSL https://install.python-poetry.org \
        | python - --install-path /usr/local/bin --version "${POETRY_VERSION}"; \
    poetry self add poetry-plugin-export; \
    rm -rf ~/.cache;

# Create `poetry` user with UID/GID (1000 as default)
RUN groupadd -g ${POETRY_GID} ${POETRY_USER} && \
    useradd -m -u ${POETRY_UID} -g ${POETRY_USER} ${POETRY_USER}

# Switch to poetry user
USER ${POETRY_USER}

ENV PATH="/usr/local/bin:$PATH"
