FROM localstack/localstack:latest

RUN chgrp -R 0 /etc/passwd && \
    chmod -R g+rwX /etc/passwd
COPY custom-entrypoint.sh /custom-entrypoint.sh
ENTRYPOINT ["/custom-entrypoint.sh"]

USER 1001
