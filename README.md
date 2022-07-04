# Confiuration files and helper scripts

This repo contains:
- Config file (run commands ~ rc file) for the Oh my zsh shell
- A python script for installing jupyter notebook and its dependencies into a virtual environment via the command: 
`python install-jupyter-notebook.py`. Be sure to be in the active virtual environment when running the command. The kernel created for the environment will assume the name of the root directory that the command is run from, the script, `install-jupyter-notebook.py`, itself can be kept anywhere.
- `jupyter-notebook-configs` Imports to configure a jupyter notebook. Configures notebook to supress warnings, widen cells and display all outputs; not just last requested to be printed.  
