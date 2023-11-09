#!/bin/bash

#deepspeed train.py --deepspeed_config=ds_config.json -p 2 --steps=100
deepspeed train.py --deepspeed_config=ds_config.json --steps=100
