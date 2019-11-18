apt-get install -y libevent-dev
cd memcached-1.4.4 && ./configure && sed -i -e 's/$(am__append_7)/$(am__append_7) -lcoriolis/' Makefile && make && make install && cd ..
cd libmemcached-0.49 && ./configure && make && make install && cd ..
ldconfig

memcached -u root -t 2 & 

cd reproduce-pkg && make && ./trigger
