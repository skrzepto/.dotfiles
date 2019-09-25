### How to extend root disk partition

src: https://unix.stackexchange.com/questions/382692/extend-root-partition-using-unallocated-space-on-dual-boot-system

1. In gparted right click on root partition and press resize and adjust the capacity
2. extend the lvm partition 

	lvextend -l+100%FREE /dev/fedora/root

3. Extend the partition to actually use that space
	
	resize2fs /dev/fedora/root
