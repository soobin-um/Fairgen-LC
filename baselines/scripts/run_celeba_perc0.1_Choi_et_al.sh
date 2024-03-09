#!/bin/bash

python3 ../src/KL-BigGAN/train.py \
--shuffle --batch_size 8 \
--num_G_accumulations 1 --num_D_accumulations 1 \
--num_D_steps 4 \
--G_lr 2e-4 \
--D_lr 2e-4 \
--dataset CA64 \
--data_root ../../data \
--G_ortho 0.0 \
--G_attn 0 --D_attn 0 \
--G_init N02 --D_init N02 \
--ema --use_ema --ema_start 1000 \
--save_every 1000 --test_every 1000 \
--num_best_copies 5 --num_save_copies 1 \
--loss_type hinge_dis_linear_gen \
--seed 777 \
--num_epochs 150 --start_eval 40 \
--reweight 1 --alpha 1.5 \
--bias 90_10 \
--perc 0.1 \
--intra_FID \
--name_suffix celeba_perc0.1_Choi_et_al