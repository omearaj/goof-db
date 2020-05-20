FROM node:6-stretch

RUN mkdir /usr/src/goof
RUN mkdir /tmp/extracted_files
COPY . /usr/src/goof
WORKDIR /usr/src/goof

RUN npm update
RUN npm install

RUN apt-get update -y \
    && apt-get install -y wget curl tar file xz-utils build-essential

#RUN wget https://www.imagemagick.org/download/ImageMagick.tar.gz
#RUN tar xvzf ImageMagick.tar.gz
#RUN cd ImageMagick-7.0.10-13/;./configure;make;make install;ldconfig /usr/lcoal/lib
#RUN ./configure
#RUN make
#RUN sudo make install
#RUN sudo ldconfig /usr/local/lib

EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]
