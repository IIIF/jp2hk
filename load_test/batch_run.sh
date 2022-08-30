#!/bin/sh

export EP=http://localhost:8000
export LOCUSTFILE=load_test/locustfile.py

LOCUST_IMG_DATASET=ruven_set/htj2k_lossless LOCUST_IMG_FORMAT=htj2k.jp2 locust --headless -t 10m -u 1 --csv kdu_htj2k_lossless --print-stats -f $LOCUSTFILE -H $EP

LOCUST_IMG_DATASET=ruven_set/htj2k_lossy LOCUST_IMG_FORMAT=htj2k.jp2 locust --headless -t 10m -u 1 --csv kdu_htj2k_lossy --print-stats -f $LOCUSTFILE/locustfile.py -H $EP

LOCUST_IMG_DATASET=ruven_set/ptiff_lossless LOCUST_IMG_FORMAT=tif locust --headless -t 10m -u 1 --csv ptiff_lossless --print-stats -f $LOCUSTFILE -H $EP

LOCUST_IMG_DATASET=ruven_set/ptiff_lossy LOCUST_IMG_FORMAT=tif locust --headless -t 10m -u 1 --csv ptiff_lossy --print-stats -f $LOCUSTFILE -H $EP

LOCUST_IMG_DATASET=ruven_set/jp2_lossless LOCUST_IMG_FORMAT=jp2 locust --headless -t 10m -u 1 --csv jp2_lossless --print-stats -f $LOCUSTFILE -H $EP

LOCUST_IMG_DATASET=ruven_set/jp2_lossless LOCUST_IMG_FORMAT=jp2 locust --headless -t 10m -u 1 --csv jp2_lossy --print-stats -f $LOCUSTFILE -H $EP