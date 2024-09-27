
## API models can run like this
# python run.py --data brazil_local --model GPT4o_MINI  --verbose --judge gpt-4o-mini
# python run.py --data brazil_english --model GPT4o_MINI  --verbose --judge gpt-4o-mini

python run.py --data japan_local --model GPT4o_MINI  --verbose --judge gpt-4o-mini
python run.py --data japan_english --model GPT4o_MINI  --verbose --judge gpt-4o-mini

python run.py --data spain_local --model GPT4o_MINI  --verbose --judge gpt-4o-mini
python run.py --data spain_english --model GPT4o_MINI  --verbose --judge gpt-4o-mini

python run.py --data israel_local --model GPT4o_MINI  --verbose --judge gpt-4o-mini
python run.py --data israel_english --model GPT4o_MINI  --verbose --judge gpt-4o-mini

# python run.py --data brazil_local --model GeminiFlash1-5  --verbose --judge gpt-4o-mini
# python run.py --data brazil_english --model GeminiFlash1-5  --verbose --judge gpt-4o-mini

python run.py --data japan_local --model GeminiFlash1-5  --verbose --judge gpt-4o-mini
python run.py --data japan_english --model GeminiFlash1-5  --verbose --judge gpt-4o-mini

python run.py --data spain_local --model GeminiFlash1-5  --verbose --judge gpt-4o-mini
python run.py --data spain_english --model GeminiFlash1-5  --verbose --judge gpt-4o-mini

python run.py --data israel_local --model GeminiFlash1-5  --verbose --judge gpt-4o-mini
python run.py --data israel_english --model GeminiFlash1-5  --verbose --judge gpt-4o-mini


## local models please run like this, to save time not load same model multiple times
# #!/bin/bash
# # Define the datasets and models
# datasets=("brazil_local" "brazil_english" "japan_local" "japan_english" "spain_local" "spain_english" "israel_local" "israel_english")
## add models here
# models=("GPT4o_MINI" "GeminiFlash1-5")

# # Loop over the models
# for model in "${models[@]}"; do
#     # Load the model only once
#     echo "Running with model: $model"
    
#     # Loop over the datasets and run the script
#     for data in "${datasets[@]}"; do
#         python run.py --data "$data" --model "$model" --verbose --judge gpt-4o-mini
#     done
# done
