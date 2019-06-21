echo '  [x] Clone pacapt repo'
sudo wget -O /usr/local/bin/pacapt \
https://github.com/icy/pacapt/raw/ng/pacapt
sudo chmod 755 /usr/local/bin/pacapt
sudo ln -sv /usr/local/bin/pacapt /usr/local/bin/pacman || true

echo '  [x] Install SLL dev dependency'
sudo pacapt install libssl-dev 

echo '  [x] Install automake'
sudo pacapt install automake

echo '  [x] Clone firebase Scrypt repo'
sudo git clone https://github.com/firebase/scrypt.git

echo '  [x] Build Scrypt'
cd scrypt/
autoreconf -i
./configure
make
