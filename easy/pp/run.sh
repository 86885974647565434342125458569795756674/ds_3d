#!/bin/bash

export CUDA_VISIBLE_DEVICES=2,3
deepspeed train.py --deepspeed_config=ds_config.json -p 2 --steps=50
