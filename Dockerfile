FROM        ubuntu:14.04

RUN apt-key update && apt-get update
RUN apt-get install -y build-essential git software-properties-common
RUN apt-get install -y libgl1-mesa-dev libquazip0-dev zip
RUN cp /usr/include/quazip/*.h /usr/local/include/
ENV http_proxy http://171.71.46.197:3128
ENV https_proxy http://171.71.46.197:3128
RUN apt-add-repository -y ppa:beineri/opt-qt542-trusty
RUN apt-get update
RUN apt-get install -y qt-latest
ENV PATH /opt/qt54/bin:$PATH
COPY makecmaf.sh /
CMD /bin/bash /makecmaf.sh
