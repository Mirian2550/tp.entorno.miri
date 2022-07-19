FROM bash:4.4
COPY . /miri
WORKDIR /miri
CMD ["bash", "main.sh"]