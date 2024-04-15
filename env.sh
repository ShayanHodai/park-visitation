#! /bin/bash

python3 -m venv $(pwd)/venv/park
source $(pwd)/venv/park/bin/activate
pip3 install --upgrade pip
pip3 install -r $(pwd)/requirements.txt
echo
echo
echo 'Done! as of 2024-04-24 latest version of required packages are installed successfully.'
echo jupyetr lab will be open 
echo
ipython kernel install --name park --user
jupyter-lab $(pwd)/park\ visitation.ipynb
