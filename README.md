# Thinkpad T14/P14s Gen4 Wi-Fi reset
For all your Wi-Fi troubles!

### Usage
```shell
sudo p14s-wifi-reset
```

### Configuration
If, for any reason, you want to use this script onanother device, the string that the script
is grepping for can be overriden by creating `/etc/p14s-wifi-reset.conf` and wirting the custom
PCI adapter name there

### Service
This repository includes a systemd service that automatically resets the Wi-Fi adapter after
wakeup from sleep

```shell
systemctl enable p14s-wakeup-wifi-reset.service
```

### Installation
```shell
sudo make install
sudo make enable-service

# or
sudo make install-and-enable
```

To remove the script and disable the service:
```shell
sudo make remove
```

## Aur Package
https://aur.archlinux.org/packages/p14s-wifi-reset-git
