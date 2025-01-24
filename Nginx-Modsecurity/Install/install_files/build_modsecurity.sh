cd /usr/local/src/nginx/ModSecurity
git submodule init
git submodule update
./build.sh
./configure
make -j$(nproc)
make install
cd 