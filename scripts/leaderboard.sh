accelerate launch -m lm_eval --model hf \
    --model_args pretrained=$1,dtype=float16 \
    --output_path results/$2/arc_challenge_25_shot.json \
    --tasks arc_challenge_25_shot \
    --batch_size auto \
    --max_batch_size 8 \
    --device cuda 


accelerate launch -m lm_eval --model hf \
    --model_args pretrained=$1,dtype=float16 \
    --output_path results/$2/hellaswag_10_shot.json \
    --tasks hellaswag_10_shot \
    --batch_size auto \
    --max_batch_size 8 \
    --device cuda 


accelerate launch -m lm_eval --model hf \
    --model_args pretrained=$1,dtype=float16 \
    --output_path results/$2/mmlu_5_shot.json \
    --tasks mmlu_5_shot \
    --batch_size auto \
    --max_batch_size 8 \
    --device cuda 


accelerate launch -m lm_eval --model hf \
    --model_args pretrained=$1,dtype=float16 \
    --output_path results/$2/truthfulqa_mc2.json \
    --tasks truthfulqa_mc2 \
    --batch_size auto \
    --max_batch_size 8 \
    --device cuda 

accelerate launch -m lm_eval --model hf \
    --model_args pretrained=$1,dtype=float16 \
    --output_path results/$2/winogrande_5_shot.json \
    --tasks winogrande_5_shot \
    --batch_size auto \
    --max_batch_size 8 \
    --device cuda 

accelerate launch -m --main_process_port 12345 lm_eval --model hf \
    --model_args pretrained=$1,dtype=float16 \
    --output_path results/$2/gsm8k.json \
    --tasks gsm8k \
    --batch_size 8 \
    --device cuda 

