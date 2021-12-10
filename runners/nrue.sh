cd ~/5g/openairinterface5g && source oaienv
cd ~/5g/openairinterface5g/cmake_targets/ran_build/build
IP_GNB="10.186.111.11"

sudo RFSIMULATOR=10.186.111.11 ./nr-uesoftmodem -r 106 --numerology 1 --band 78 -C 3619200000 \
   --rfsim --sa --nokrnmod 1 ~/5g/conf/ue.conf


