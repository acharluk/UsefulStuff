# How to setup Windows Subsystem for Linux

## Windows Features
1. Open the Start menu
2. Search for "Turn Windows features on or off"
    - You will see this window: ![Windows Features](/images/windows/setup_wsl_1.png)
    - Scroll down and check the option that says "Windows Subsystem for Linux"
    - Press OK, you may need to reboot your computer

---

## Windows Store
3. Open the Windows Store and search for Ubuntu
    - You should see a this: ![Ubuntu on Windows Store](/images/windows/setup_wsl_2.png)
    - Click install and wait until it finishes
    - When it finished installing, you should have an Ubuntu icon in your progams
    - It will open a window like this: ![Ubuntu install](/images/windows/setup_wsl_3.png)
    - This window will guide you through the install of Ubuntu and finally ask for a username and password

---

## Installing GCC and Make
4. Open Ubuntu bash from the Windows start menu
    - Enter the following command in the terminal: `sudo apt install g++ make`
    - Enter your password if needed, then press `y` and `enter` to begin installing g++ and make
    - You should have a windows like this: ![GGC Make install](/images/windows/setup_wsl_4.png)
    - When it's finished installing, you can test the programs by typing `g++ -v` and `make -v`, it should look similar to this: ![GGC Make version](/images/windows/setup_wsl_5.png)

---

## Done!
5. You're all setup now!