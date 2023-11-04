# # baseline
CONFIG=baseline
TAG=baseline
MODEL_SIZE=1558
LR=1.5e-4
BSZ=512
SEQ_LEN=1024
MP_SIZE=1
SEED=1234
SAVE_INTERVAL=5000
NUM_ITER=600000
NUM_TOKEN=157286400000
LR_DECAY_TOKEN=157286400000
LR_WARMUP_ITER=3000
CONFIG_TEMPLATE=false
CURRICULUM_STEP=0
CURRICULUM_MIN=0

# curriculum learning
# CONFIG=curriculum_fixed_linear
# MODEL_SIZE=1558
# LR=6e-4
# BSZ=4096
# SEQ_LEN=1024
# MP_SIZE=1
# SEED=1234
# SAVE_INTERVAL=1000
# NUM_ITER=75000
# NUM_TOKEN=157286400000
# LR_DECAY_TOKEN=157286400000
# LR_WARMUP_ITER=3000
# CONFIG_TEMPLATE=true
# CURRICULUM_STEP=45000
# CURRICULUM_MIN=64
# TAG="${CONFIG}_s${CURRICULUM_MIN}to${SEQ_LEN}_step${CURRICULUM_STEP}"

bash ds_pretrain_gpt2.sh $CONFIG $TAG $MODEL_SIZE $LR $BSZ $SEQ_LEN $MP_SIZE $SEED $SAVE_INTERVAL $NUM_ITER $NUM_TOKEN $LR_DECAY_TOKEN $LR_WARMUP_ITER $CONFIG_TEMPLATE $CURRICULUM_STEP $CURRICULUM_MIN
