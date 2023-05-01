python3 run_experiment.py --devices 0 --model max --mails --scheduler enable
python3 run_experiment.py --devices 0 --model mean --mails --scheduler enable

python3 run_experiment.py --devices 0 --model max --blogs --batch_size 2048 --vbatch_size 100 --scheduler enable
python3 run_experiment.py --devices 0 --model mean --blogs --batch_size 2048 --vbatch_size 100 --scheduler enable
