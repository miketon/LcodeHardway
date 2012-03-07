# 1) Download it (use wget if you don't have curl) 
curl -O http://valgrind.org/downloads/valgrind-3.7.0.tar.bz2 

# use md5sum to make sure it matches the one on the site
md5sum valgrind-3.7.0.tar.bz2

# unpack it.
tar -xjvf valgrind-3.7.0.tar.bz2

# cd into the newly created directory
cd valgrind-3.7.0

# configure it
./configure

# make it
make

# install it (need root)
sudo make install
