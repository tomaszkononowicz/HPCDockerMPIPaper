FROM alpine:3.12.0 as build

RUN apk update

### GCC 9.3.0
RUN wget https://ftp.gnu.org/gnu/gcc/gcc-9.3.0/gcc-9.3.0.tar.gz
RUN tar -xzf gcc-9.3.0.tar.gz
RUN apk add make build-base zlib-dev
WORKDIR gcc-9.3.0
RUN sed -i 's/--check/-c/g' ./contrib/download_prerequisites
RUN ./contrib/download_prerequisites
RUN ./configure --prefix=/usr/local --build=$(uname -m)-alpine-linux-musl --host=$(uname -m)-alpine-linux-musl --target=$(uname -m)-alpine-linux-musl --with-pkgversion="Alpine 9.3.0" --enable-checking=release --disable-fixed-point --disable-libmpx --disable-libmudflap --disable-libsanitizer --disable-libssp --disable-libstdcxx-pch --disable-multilib --disable-nls --disable-symvers --disable-werror --enable-__cxa_atexit --enable-default-pie --enable-languages=c,c++ --enable-shared --enable-threads --enable-tls --with-linker-hash-style=gnu --with-system-zlib
RUN make 
RUN make install
RUN ln -s /usr/bin/gcc /usr/local/bin/cc
WORKDIR /

### OpenMPI 3.1.1
RUN wget https://download.open-mpi.org/release/open-mpi/v3.1/openmpi-3.1.1.tar.gz
RUN tar -xvzf openmpi-3.1.1.tar.gz
WORKDIR openmpi-3.1.1
RUN apk add perl
RUN ./configure --prefix=/usr/local
RUN echo "#include <stdio.h>" > /usr/include/sys/unistd.h
RUN echo "#include <sys/types.h>" >> /usr/include/sys/unistd.h
RUN echo "#include <unistd.h>" >> /usr/include/sys/unistd.h
RUN cat /usr/include/sys/unistd.h
RUN echo "#include <sys/unistd.h>" | cat - /openmpi-3.1.1/opal/mca/pmix/pmix2x/pmix/include/pmix_server.h > temp.txt && mv temp.txt /openmpi-3.1.1/opal/mca/pmix/pmix2x/pmix/include/pmix_server.h
RUN make all install
WORKDIR /


### Main

FROM alpine:3.12.0

COPY --from=build /usr/local/ /usr/local
COPY --from=build /usr/include/ /usr/include
COPY --from=build /usr/bin/ /usr/bin
COPY --from=build /usr/lib/ /usr/lib

ENV LD_LIBRARY_PATH="/usr/local/lib"
ENV PATH="/usr/local/bin:${PATH}"

RUN addgroup -S apiarygroup
RUN adduser -S apiaryuser -G apiarygroup --shell /bin/sh
RUN echo 'apiaryuser:apiarypassword' | chpasswd

RUN apk update

RUN apk add openssh openssh-server
RUN sed -i 's/#   Port 22/   Port 2222/g' /etc/ssh/ssh_config
RUN sed -i 's/#   StrictHostKeyChecking ask/   StrictHostKeyChecking no/g' /etc/ssh/ssh_config
RUN echo "   UserKnownHostsFile /dev/null" >> /etc/ssh/ssh_config
RUN sed -i 's/#Port 22/Port 2222/g' /etc/ssh/sshd_config
RUN ssh-keygen -A

COPY id_rsa /home/apiaryuser/.ssh/id_rsa
COPY id_rsa.pub /home/apiaryuser/.ssh/id_rsa.pub
RUN cat /home/apiaryuser/.ssh/id_rsa.pub > /home/apiaryuser/.ssh/authorized_keys

RUN touch /home/apiaryuser/.profile
RUN echo 'PATH="/usr/local:/usr/local/bin:/usr/bin:/usr/lib:${PATH}"' >> /home/apiaryuser/.profile
RUN echo 'LD_LIBRARY_PATH="/usr/local/lib"' >> /home/apiaryuser/.profile

RUN chown -R apiaryuser:apiarygroup /home/apiaryuser

RUN gcc --version
RUN mpirun --version

CMD ["/usr/sbin/sshd","-D"]


