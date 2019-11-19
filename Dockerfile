# https://www.pllab.riec.tohoku.ac.jp/smlsharp/docs/3.4.0/en/Ch5.S3.xhtml

FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y llvm-3.7 libgmp-dev libyajl-dev gcc g++
RUN cd /tmp && apt-get install -y wget && wget \
    http://www.pllab.riec.tohoku.ac.jp/smlsharp/download/massivethreads_0.99-1_amd64.deb \
    http://www.pllab.riec.tohoku.ac.jp/smlsharp/download/massivethreads-dev_0.99-1_amd64.deb \
    http://www.pllab.riec.tohoku.ac.jp/smlsharp/download/smlsharp_3.4.0-1_amd64.deb \
    && dpkg --install massivethreads_0.99-1_amd64.deb \
    && dpkg --install massivethreads-dev_0.99-1_amd64.deb \
    && dpkg --install smlsharp_3.4.0-1_amd64.deb  \
    && rm *.deb && apt-get purge -y wget

ENTRYPOINT ["smlsharp"]
