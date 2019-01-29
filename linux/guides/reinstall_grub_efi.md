# Reinstall GRUB on EFI systems from a live ISO/CD

- X = Your disk letter
- Y = Your root partition number (/)
- Z = Your boot partition number (/boot/efi)

```bash
sudo mount /dev/sdXY /mnt
sudo mount /dev/sdXZ /mnt/boot/efi
for i in /dev /dev/pts /proc /sys /run; do sudo mount -B $i /mnt$i; done
sudo chroot /mnt
grub-install /dev/sdX
update-grub
```