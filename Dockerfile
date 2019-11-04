FROM nrel/api-umbrella

RUN apt-get update

RUN apt-get install -y openssl curl tar gzip bash ca-certificates git wget unzip

RUN cd /usr/local/share/ca-certificates; \
    wget -q https://github.com/hacdescm/certs/archive/master.zip; \
    unzip -j master.zip; \
    rm master.zip
    
RUN update-ca-certificates
