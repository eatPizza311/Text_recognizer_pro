# Text Recognizer Pro 

This project is from the Full Stack Deep Learning Spring 2021 Labs.

We will incrementally develop a complete deep learning codebase to understand the content of handwritten paragraphs.

So in this project we will do the following:
- Use the modern stack of PyTorch and PyTorch-Ligtning.
- Use the main workhorses of DL today: CNNs, RNNs, and Transformers.
- Manage our experiments using Weights & Biases.
- Set up continuous integration system for our codebase using CircleCI.
- Package up the prediction system as a REST API using FastAPI, and deploy it as a Docker container on AWS Lambda.
- Set up monitoring that alerts us when the incoming data distribution changes.

# Setup
We use `conda` for managing Python and CUDA versions, and `pip-tools` for managing Python package dependencies.

And create a Makefile for making setup simple.

1. Install the Python + CUDA environment  
 Run `make conda-update` to create an environment called `fsdl-text-recognizer`, as defined in `environment.yml`.  
 Next, activate the conda environment.
   ```
   conda activate fsdl-text-recognizer
   ```

2. Install Python packages  
 Install all necessary Python packages by running `make pip-tools`
3. Install Python packages  
 Add `export PYTHONPATH=.` as the last line of the `~/.bashrc` file using a text editor of your choice (e.g. `nano ~/.bashrc`).
