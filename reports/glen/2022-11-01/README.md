# Running Stefano's tests


Changes: I had to revert to f57b41b06ee536b6ff3aba095884107d3ffea139 version of IIIPImage

Then I ran:

```
LOCUST_IMG_DATASET=ptiff/lossy LOCUST_IMG_FORMAT=tif locust --headless -f load_test/locustfile.py -H http://localhost:8000
```

and left it running until it got to around 10k results:


```
Type     Name                                                                          # reqs      # fails |    Avg     Min     Max    Med |   req/s  failures/s
--------|----------------------------------------------------------------------------|-------|-------------|-------|-------|-------|-------|--------|-----------
GET      {derv_sz: "rnd_region"}                                                         1992     0(0.00%) |     14       5     189     14 |    3.22        0.00
GET      {derv_sz: "tile"}                                                               1992     0(0.00%) |      8       4      27      8 |    3.22        0.00
GET      {derv_sz: 1024}                                                                 1000     0(0.00%) |    107      36    1090     87 |    1.62        0.00
GET      {derv_sz: 128}                                                                  5000     0(0.00%) |     10       4    1023      9 |    8.08        0.00
GET      {derv_sz: 4096}                                                                  250     0(0.00%) |   1651     563    9452   1100 |    0.40        0.00
--------|----------------------------------------------------------------------------|-------|-------------|-------|-------|-------|-------|--------|-----------
         Aggregated                                                                     10234     0(0.00%) |     60       4    9452     10 |   16.53        0.00
```

### jp2 lossy tests:

Running:

```
LOCUST_IMG_DATASET=jp2/lossy LOCUST_IMG_FORMAT=jp2 locust --headless -f load_test/locustfile.py -H http://localhost:8000
```

```
Type     Name                                                                          # reqs      # fails |    Avg     Min     Max    Med |   req/s  failures/s
--------|----------------------------------------------------------------------------|-------|-------------|-------|-------|-------|-------|--------|-----------
GET      {derv_sz: "rnd_region"}                                                         2016     0(0.00%) |     28      12     102     29 |    1.38        0.00
GET      {derv_sz: "tile"}                                                               2016     0(0.00%) |     36      12      79     36 |    1.38        0.00
GET      {derv_sz: 1024}                                                                 1008     0(0.00%) |    414     141    1637    270 |    0.69        0.00
GET      {derv_sz: 128}                                                                  5040     0(0.00%) |     21      10      61     18 |    3.45        0.00
GET      {derv_sz: 4096}                                                                  252     0(0.00%) |   3184    1333   11264   2600 |    0.17        0.00
--------|----------------------------------------------------------------------------|-------|-------------|-------|-------|-------|-------|--------|-----------
         Aggregated                                                                     10332     0(0.00%) |    141      10   11264     27 |    7.07        0.00
```

### htj2k lossy tests


```
LOCUST_IMG_DATASET=htj2k/lossy LOCUST_IMG_FORMAT=htj2k.jp2 locust --headless -f load_test/locustfile.py -H http://localhost:8000
```


```
Type     Name                                                                          # reqs      # fails |    Avg     Min     Max    Med |   req/s  failures/s
--------|----------------------------------------------------------------------------|-------|-------------|-------|-------|-------|-------|--------|-----------
GET      {derv_sz: "rnd_region"}                                                         2288     0(0.00%) |     12       5      67     12 |    4.55        0.00
GET      {derv_sz: "tile"}                                                               2288     0(0.00%) |     13       6      47     12 |    4.55        0.00
GET      {derv_sz: 1024}                                                                 1144     0(0.00%) |     59      29     459     52 |    2.27        0.00
GET      {derv_sz: 128}                                                                  5720     0(0.00%) |      9       4      45      9 |   11.37        0.00
GET      {derv_sz: 4096}                                                                  286     0(0.00%) |   1109     526    4148    930 |    0.57        0.00
--------|----------------------------------------------------------------------------|-------|-------------|-------|-------|-------|-------|--------|-----------
         Aggregated                                                                     11726     0(0.00%) |     42       4    4148     11 |   23.30        0.00
```


### ptiff lossless

```
LOCUST_IMG_DATASET=ptiff/lossless =tif locust --headless -f load_test/locustfile.py -H http://localhost:8000
```

```
Type     Name                                                                          # reqs      # fails |    Avg     Min     Max    Med |   req/s  failures/s
--------|----------------------------------------------------------------------------|-------|-------------|-------|-------|-------|-------|--------|-----------
GET      {derv_sz: "rnd_region"}                                                         2120     0(0.00%) |     14       5      63     13 |    3.02        0.00
GET      {derv_sz: "tile"}                                                               2120     0(0.00%) |      8       3     199      7 |    3.02        0.00
GET      {derv_sz: 1024}                                                                 1062     0(0.00%) |    107      39     467     88 |    1.51        0.00
GET      {derv_sz: 128}                                                                  5300     0(0.00%) |      9       4      44      9 |    7.54        0.00
GET      {derv_sz: 4096}                                                                  266     0(0.00%) |   1835     701    5524   1200 |    0.38        0.00
--------|----------------------------------------------------------------------------|-------|-------------|-------|-------|-------|-------|--------|-----------
         Aggregated                                                                     10868     0(0.00%) |     64       3    5524     10 |   15.46        0.00

```

### jp2 lossless


