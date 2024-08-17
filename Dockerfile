FROM python:3.12.5-slim-bookworm
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

WORKDIR /app
COPY uv.lock pyproject.toml /app/

RUN uv sync --frozen --no-install-project --package=server

COPY packages /app/packages
RUN uv sync --locked --package=server
ENV PATH="/app/.venv/bin:$PATH"
