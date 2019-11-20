FROM frolvlad/alpine-mono

LABEL version="1.0.0",maintainer="phuongthephung@gmail.com"

COPY start.sh /start

ENV TSHOCK_VERSION=4.3.26

RUN mkdir /world /config /logs /plugins /tshock && \
        cd /tshock && \
        wget https://github.com/NyxStudios/TShock/releases/download/v$TSHOCK_VERSION/tshock_$TSHOCK_VERSION.zip && \
        unzip tshock_$TSHOCK_VERSION.zip && \
        rm tshock_$TSHOCK_VERSION.zip && \
        chmod +x /tshock/TerrariaServer.exe && \
        chmod +x /start

VOLUME ["/world", "/config", "/logs", "/plugins"]

WORKDIR /tshock

EXPOSE 7777

ENTRYPOINT ["/start"]