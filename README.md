# debian-c

A Docker environment for developing using the C/C++ programming language

## Images

This image gets published at a regular frequency to the
[GitHub Container Registry](https://github.com/nnooney-docker/debian-c/pkgs/container/debian-c)
via a [GitHub action](.github/workflows/main.yml).

## Usage

Use this with VS Code's remote container development support. You need to add
the following files to your git repo to use this image for development:

```Dockerfile
# .devcontainer/Dockerfile
FROM ghcr.io/nnooney-docker/debian-c:main
```

```json
// .devcontainer/devcontainer.json
{
  "name": "My Container",
  "build": {
    "dockerfile": "Dockerfile"
  },
  "settings": {},
  "extensions": [
    "ms-vscode.cpptools"
  ],
  "remoteUser": "developer"
}
```

Then you can use the command "Clone Repository in Container Volume" and voilà!
You clone the repository into a fresh instance of this container.
