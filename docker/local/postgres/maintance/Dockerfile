FROM postgres:14.1

COPY ./docker/local/postgres/maintance /usr/local/bin/maintance

RUN chmod +x /usr/local/bin/maintance/*
RUN mv /usr/local/bin/maintance/* /usr/local/bin/ \
    && rmdir /usr/local/bin/maintance
