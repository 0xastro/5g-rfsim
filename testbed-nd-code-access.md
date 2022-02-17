| IPs and Passwords/KEYS have been communicated [OAI5G Repo reference](https://gitlab.eurecom.fr/oai/openairinterface5g/-/tree/2021.w46-SnT)! - Updated 17 Feb 2020  |
| --- |

## TESTBED ACCESS

> Terminal 1 [5GC]
```
ssh -v gnb@10.6.x.x
cd oai.doppler.dev/5g-rfsim/runners/
./start-5gc.sh
docker logs --follow oai-amf
```


> Terminal 2 [gNB]
```
ssh -v gnb@10.6.x.x
cd oai.doppler.dev/5g-rfsim/runners/
./gnbsa.sh
```

> Terminal 3 [UE]
```
ssh -v ue@10.6.y.y
cd oai.doppler.dev/5g-rfsim/runners/
./nrue.sh
```

## LOGS ACCESS

> gnb logs
```
scp -v -r gnb@10.6.x.x:/home/gnb/oai.doppler.dev/5g-rfsim/gnblogs .
```

> ue logs
```
scp -v -r ue@10.6.y.y:/home/ue/oai.doppler.dev/5g-rfsim/uelogs .
```


## CODE ACCESS

```bash
git clone --branch 2021.w46-SnT https://gitlab.eurecom.fr/oai/oai/openairinterface5g.git 
cd openairinterface5g
git checkout -f 2021.w46-SnT
```


> A. Astro - @astroa.net 17-Feb-2022
