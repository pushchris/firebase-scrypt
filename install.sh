echo '  [x] Clone pacapt repo'
sudo wget https://github.com/icy/pacapt/raw/ng/pacapt
sudo chmod 755 pacapt

echo '  [x] Install SLL dev dependency'
sudo ./pacapt install libssl-dev 

echo '  [x] Install automake'
sudo ./pacapt install automake

echo '  [x] Clone firebase Scrypt repo'
git clone https://github.com/firebase/scrypt.git

echo '  [x] Build Scrypt'
cd scrypt/
autoreconf -i
./configure
make
