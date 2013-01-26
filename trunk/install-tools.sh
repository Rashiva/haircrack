#!/bin/bash
#

sudo apt-get update
sudo apt-get install libsqlite0-dev libsqlite3-dev libpcap-dev libssl-dev
svn co http://trac.aircrack-ng.org/svn/trunk/ aircrack
cd aircrack
make unstable=true sqlite=true
sudo make unstable=true sqlite=true install
cd ..
svn co http://reaver-wps.googlecode.com/svn/trunk/ reaver
cd reaver/src
./configure
make
sudo make install
cd ../..
svn co http://pyrit.googlecode.com/svn/trunk/ pyrit
cd pyrit/pyrit
python setup.py build
sudo python setup.py install
cd ../..

