import subprocess
import os

print(os.getcwd())
pipenv_name = os.environ['VIRTUAL_ENV'].split("/")[-1]

print(f"Installing ipykernel to environment: {pipenv_name}")

python_loc = subprocess.check_output(["which", "python"]).decode("utf-8").rstrip("\n")
pip_loc = subprocess.check_output(["which", "pip"]).decode("utf-8").rstrip("\n")

print("python location: ", python_loc)
print("pip location: ", pip_loc)
print("Install ipykernel to user in environment")

try:
    subprocess.check_call([pip_loc,"install","ipykernel", "jupyterlab", "jupyter_nbextensions_configurator", "jupyter-http-over-ws"])
except subprocess.CalledProcessError:
    subprocess.check_call(["pip","install", "ipykernel", "jupyterlab", "jupyter_nbextensions_configurator", "jupyter-http-over-ws"])
    pass
try:
    subprocess.check_call([str(python_loc), "-m", "ipykernel", "install", "--user", f"--name={pipenv_name}"])
except subprocess.CalledProcessError:
    subprocess.check_call(["python3","-m","ipykernel","install","--user",f"--name={pipenv_name}"])
    pass
