# 5g-rfsim

## Instruction to build OAI-RFSIM 5G complient code on your PC

## 5G Core Installation

```
docker pull ubuntu:bionic
docker pull mysql:5.7
docker pull rdefosseoai/oai-amf:latest
docker pull rdefosseoai/oai-nrf:latest
docker pull rdefosseoai/oai-spgwu-tiny:latest
docker pull rdefosseoai/oai-smf:latest
docker pull rdefosseoai/oai-udr:latest
docker pull rdefosseoai/oai-udm:latest
docker pull rdefosseoai/oai-ausf:latest
docker pull rdefosseoai/oai-upf-vpp:latest
``` 

```
docker image tag rdefosseoai/oai-amf:latest oai-amf:latest
docker image tag rdefosseoai/oai-nrf:latest oai-nrf:latest
docker image tag rdefosseoai/oai-smf:latest oai-smf:latest
docker image tag rdefosseoai/oai-spgwu-tiny:latest oai-spgwu-tiny:latest
docker image tag rdefosseoai/oai-udr:latest oai-udr:latest
docker image tag rdefosseoai/oai-udm:latest oai-udm:latest
docker image tag rdefosseoai/oai-ausf:latest oai-ausf:latest
docker image tag rdefosseoai/oai-upf-vpp:latest oai-upf-vpp:latest
```


```
git clone --branch v1.2.1 https://gitlab.eurecom.fr/oai/cn5g/oai-cn5g-fed.git ~/5g/oai-cn5g-fed && cd ~/5g/oai-cn5g-fed
git checkout -f v1.2.1
./scripts/syncComponents.sh
```


## 5G RAN: gNB and nrUE Installation

```
git clone --branch 2021.w46-SnT https://gitlab.eurecom.fr/oai/oai/openairinterface5g.git ~/5g/openairinterface5g && cd ~/5g/openairinterface5g
git checkout -f 2021.w46-SnT
source oaienv && cd cmake_targets/
./build_oai --gNB --nrUE -w SIMU --build-lib nrscope --ninja
```
