# Systemd service configuration file location 

move `./sync_configs.service` to location `/etc/systemd/system/sync_configs.service` then run `systemctl start sycn_fongis` 

the command is

```
sudo cp ./sync_configs.service  /etc/systemd/system/sync_configs.service  
```