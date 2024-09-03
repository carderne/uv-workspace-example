# uv-workspace-example

Minimal example showing a Docker build with a "monorepo" style [uv](https://docs.astral.sh/uv/) Workspace.

## Usage
```bash
uv sync
docker build -t uv-workspace-example .
```

## Notes
Have a look at the root `pyproject.toml`. Pending [this issue](https://github.com/astral-sh/uv/issues/6935) you should probably add each internal package in three places:
- `project.dependencies`
- `tool.uv.sources`
- `tool.uv.workspace.members`
