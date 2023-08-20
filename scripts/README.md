# Systemd service configuration file location 

move `./sync_configs.service` to location `/etc/systemd/system/sync_configs.service` then run `systemctl start sycn_configs` 

the command is
```
sudo cp ./sync_configs.service  /etc/systemd/system/sync_configs.service  
```

you need to then notify the daemon of the unit service file changes with 
```
sudo systemctl daemon-reload
```

then finally reload the service with 
```
sudo systemctl restart sync_configs
```

check the log output from service with 

```
sudo systemctl status sync_configs
```
*you should be able to see the commands that were run from the status info output*

all together:
```
sudo systemctl daemon-reload && sudo sytemctl restart sync_configs && sudo systemctl status sync_configs
```
