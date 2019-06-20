echo '  [x] Clone sysget repo'
git clone https://github.com/emilengler/sysget.git
cd sysget/
make && sudo make install

echo '  [x] Install SLL dev dependency'
sudo sysget install libssl-dev 

echo '  [x] Install automake'
sudo sysget install automake

echo '  [x] Clone firebase Scrypt repo'
git clone https://github.com/firebase/scrypt.git

echo '  [x] Build Scrypt'
cd scrypt/
autoreconf -i
./configure
make
