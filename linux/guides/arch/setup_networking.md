# Setup networking

## Ethernet
### Check example configurations
Netctl provides some example configurations located in `/etc/netctl/examples/`
![ls /etc/netctl/examples/](/images/linux/guides/arch/setup_networking_1.png)

### To setup a simple ethernet connection follow this steps:

1. Copy the example profile at `/etc/netctl/examples/ethernet-dhcp` to `/etc/netctl`
2. Check what your interface is using `ip link show`, in my case is `ens33` as shown in this image: ![ip link show](/images/linux/guides/arch/setup_networking_2.png)
3. Edit the `Interface` line to match your ethernet interface: ![Editing the Interface](/images/linux/guides/arch/setup_networking_3.png)
4. Execute the following command: `sudo netctl enable ethernet-dhcp`. You may have to change `ethernet-dhcp` to the name of your profile
5. Reboot and check if the connection works! ![](/images/linux/guides/arch/setup_networking_4.png)

---

## WiFi
### To setup WiFi connection follow this steps:
1. Install the packages `wifi-menu` and `dialog`
2. Run `wifi-menu`, a window will appear showing you what wireless networks are avaliable
3. Select your network with the arrow keys, then press enter
4. It will ask you for your network password and a profile name, you can leave the profile name unchanged
5. After the setup finishes, you should have a working wireless network!