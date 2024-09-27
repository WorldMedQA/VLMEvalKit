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


# #!/bin/bash

# # Arrays of countries and models
# countries=("brazil" "japan" "spain" "israel")
# models=("GPT4o_MINI" "GeminiFlash1-5", "paligemma-3b-mix-448")

# # Loop over each country and model
# for country in "${countries[@]}"; do
#   for model in "${models[@]}"; do
#     echo "Running model $model on $country data..."
#     # Run the local data
#     python run.py --data "${country}_local" --model "$model" --verbose --judge gpt-4o-mini
#     # Run the English data
#     python run.py --data "${country}_english" --model "$model" --verbose --judge gpt-4o-mini
#   done
# done
