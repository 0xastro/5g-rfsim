cd ~/5g/openairinterface5g && source oaienv
cd ~/5g/openairinterface5g/cmake_targets/ran_build/build


sudo RFSIMULATOR=server ./nr-softmodem --rfsim --sa -O ~/5g/conf/gnb.conf
