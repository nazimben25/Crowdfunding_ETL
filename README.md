# Crowdfunding_ETL prject2

## Team No 4 : members 1. Alaeddini Saba 2. Bendjaballah Nazim  3. Baichoo Sunilduth



## Getting Started – Installation

1. Install Python on your computer
```
https://www.python.org/downloads/
```
2. Create a new environment
```
conda create -n dev python=3.10 anaconda -y
```
3. Activate the environment
```
conda activate dev
```
4. Install all the required dependencies.
```
pip install -r requirements.txt
```
5. Clone this repository to your local computer using `git clone`.

# Import dependencies
import pandas as pd

import numpy as np
pd.set_option('max_colwidth', 400)

from datetime import datetime as dt
import json