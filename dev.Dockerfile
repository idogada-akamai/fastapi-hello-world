FROM ubuntu as extensions-installer
RUN apt update && apt install -y curl
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN code-server --install-extension donjayamanne.python-extension-pack


FROM python:3.10
COPY --from=extensions-installer /root/.local/share/code-server/extensions /root/.vscode-server/extensions

