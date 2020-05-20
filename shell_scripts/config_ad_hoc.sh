# could be a different command if you are using a different OS on your RPi
sudo systemctl stop dhcpcd 

# Use your own interface name if its not wlan0
sudo iwconfig wlan0 mode Ad-Hoc

# Use your own interface name if its not wlan0
# you can change the name of your network here
sudo iwconfig wlan0 essid "BeamlinkAdHoc"

###############################################
# EDIT MADE HERE
# you will need a unique IP address for each device in your mesh network
# you should keep all of them in the same subnet. 
# I had my IP address in the 192.168.7.xxx subnet
###############################################
# Use your own interface name if its not wlan0
sudo ifconfig wlan0 192.168.7.3 netmask 255.255.255.0 up

#sudo olsrd -i wlan0

