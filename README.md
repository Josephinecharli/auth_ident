# PART: Pretrained Authorship Representation Transformer

<!-- implementation details -->
## Implementation Details

This project is taken directly from the authors of the PART Paper's public github repository. The files in this dataset were primarily coded and created by the original authors to implement the results of their paper. However a README, information about datasets and model architectures are missing which I provide here. Additionally, the notebooks to process data and the code to implement their experiment contains various bugs, missing model architectures and incomplete implementations of various training functions. I have done my best to reconstruct this repository true to the paper and present a working repository and detailed instructions for how to obtain and evaluate upon three datasets. 

<!-- repository overview -->
## Repository Overview

### Scripts
- `run.sh` the training script to run `run_experiment.py` and train models with the specified hyperparameters. This is a modified version of the prior `run_experiment.sh` which I edited due to data and model contraints
- `run_experiment.py` the main training code. I edited the model architectures used in this file as the ones previously published referenced model definitions and architectures which are undefined. I also needed to edit the 


### Notebooks
- `gather_data.ipynb` initial data preprocessing
- `clean_data.ipynb` data tokenizing and cleaning for use with roberta transformer model
- `train_test_split.ipynb` data partitioning into train/test datasets
- `validation.ipynb` evaluation

### Data
*from the paper*
- Standardized Gutenberg: This dataset contains authored books, as well as analyzable meta-data such as
age or book type. Books with anonymous authors or authored by more than one person are discarded from our
analysis. In the standardized corpus, there is some identifying information about the author at the beginning
and end of the books, given that each book is much longer than 512 tokens, we opted to drop the first and last
chunk of every book to avoid presenting the model identifying information.
- Blog authorship: This dataset contains blog posts from a diverse set of age groups. It is by far the largest
dataset of the evaluation with over ten thousand individual authors. There is no additional preprocessing in
this dataset.
- Enron mails: This dataset contains emails from the Enron corporation, authored a hundred people. This is
the most challenging dataset due to the small size and noisy nature of the emails. Email headers and footers
are removed from the dataset as they contained identifying information about each author.

<!-- implementation instructions -->
### How to Run

Before running this code, the necessary data needs to be downloaded from the web, then preprocessed and tokenized using the jupyter notebooks. In an attempt to reconstruct this repository in the most similar way to the associated paper, I would reccomend downloading these three datasets from the following links
- [gutenberg corpus](https://github.com/pgcorpus/gutenberg)
- [mail corpus](http://www.cs.cmu.edu/~enron/)
- [blog corpus](https://u.cs.biu.ac.il/~koppel/BlogCorpus.htm) 

Steps to process the data:
1. create a data/nlp folder and create three subfolders titled with the names of your datasets
2. make sure the folder names correspond to the paths referenced in `gather_data.ipynb`
3. run `gather_data.ipynb` then `clean_data.ipynb` then `train_test_split.ipynb`

You can then execute `run.sh` from shell to run `run_experiment.py` with specific hyperparamters and model architectures or run `python3 run_experiment.py` with all required command line arguments from command line.
To evaluate model performance, use `validation.ipynb`


<!-- Acknowledgements -->
## Acknowledgements
This project is directly based off the code from:

Project Link: https://github.com/jahuerta92/authorship-embeddings.git/
