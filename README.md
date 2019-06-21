#### Install VirtualBox 6.0 / 5.2 on Linux Mint 19 / Linux Mint 18

Open up a terminal and Import the public key of the Oracle VirtualBox repository to your system.

```
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
```

Add the VirtualBox repository using the following command.

#### Linux Mint 19 ###

```
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian bionic contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
```

#### Linux Mint 18 ###
```
echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib"  | sudo tee /etc/apt/sources.list.d/virtualbox.list
```

Update the repository index database.

```
sudo apt-get update
```

Install the VirtualBox using the apt command.

#### VirtualBox 6.0:

`sudo apt-get install -y virtualbox-6.0`

#### VirtualBox 5.2:

`sudo apt-get install -y virtualbox-5.2`


#### Referências

https://computingforgeeks.com/install-latest-vagrant-on-ubuntu-18-04-debian-9-kali-linux/

https://www.vagrantup.com/docs/virtualbox/configuration.html

https://app.vagrantup.com/generic/boxes/debian9

https://relativkreativ.at/articles/how-to-build-a-vagrant-base-box-from-a-virtualbox-vm

https://www.vagrantup.com/docs/virtualbox/boxes.html

https://www.vagrantup.com/docs/boxes/base.html
