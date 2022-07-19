FROM bash:4.4

COPY . /tp-entorno
WORKDIR tp-entorno

CMD ["bash", "main.sh"]