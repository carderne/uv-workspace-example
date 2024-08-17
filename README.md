# uv-workspace-example

Two packages:
- packages/greeter
- packages/server (depends on greeter)

Docker build fails with:
```bash
 => ERROR [stage-0 5/7] RUN uv sync --frozen --no-install-project --package=server
------
 > [stage-0 5/7] RUN uv sync --frozen --no-install-project --package=server:
0.163 Using Python 3.12.5 interpreter at: /usr/local/bin/python3
0.163 Creating virtualenv at: .venv
0.164 error: Failed to determine installation plan
0.164   Caused by: Distribution not found at: file:///app/packages/greeter
------
Dockerfile:7
--------------------
   5 |     COPY uv.lock pyproject.toml /app/
   6 |
   7 | >>> RUN uv sync --frozen --no-install-project --package=server
   8 |
   9 |     COPY packages /app/packages
--------------------
```
