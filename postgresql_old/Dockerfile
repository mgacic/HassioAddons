

ARG BUILD_FROM
ARG BUILD_VERSION
FROM $BUILD_FROM

ENV LANG en_US.utf8


COPY init.sh /init.sh
RUN chmod a+x /init.sh

CMD ["/init.sh"]

