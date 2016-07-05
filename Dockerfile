FROM java:7-jre

WORKDIR /

RUN wget -qO gcd.zip http://storage.googleapis.com/gcd/tools/gcd-grpc-1.0.0.zip && unzip -q gcd.zip
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      socat \
    && rm -rf /var/lib/apt/lists/*


ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]

EXPOSE 8080
