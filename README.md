# vagrant-dev-env

Development environment provisioned with shell scripts on a (linux/ubuntu) xenial64 box

## SSH access from a host with Windows 10

Use [PuTTYgen](https://the.earth.li/~sgtatham/putty/latest/x86/puttygen.exe) to generate a .ppk from the private key located on _.vagrant\machines\default\virtualbox\private_key_, and set up _connection > SSH > Auth_ to file created above on your [PuTTY](https://the.earth.li/~sgtatham/putty/latest/x86/putty.exe) session.

## Virtual Box dependencies

```
vagrant plugin install vagrant-vbguest
```
