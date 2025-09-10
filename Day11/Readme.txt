Day 11 - LVM and Mounting

Today I learned about LVM (Logical Volume Manager) in Linux using my EBS volumes.
I practiced both the theory and the commands step by step.

🔹 What I Learned in Theory
1. EBS Volumes

EBS (Elastic Block Store) is like a hard disk attached to my EC2 instance.

I created 4 volumes (10GB, 12GB, 14GB, …).

2. Why LVM?

Normally each disk is separate. LVM lets me:

Combine multiple disks into one pool.

Create partitions (Logical Volumes) inside that pool.

Expand storage later by adding more disks.

Manage storage flexibly.

3. Layers of LVM

Physical Volume (PV) → A disk marked for LVM use.
Volume Group (VG) → A pool made from one or more PVs.
Logical Volume (LV) → A slice of the VG, which I can use like a normal partition.

4. Filesystem

Without a filesystem, storage is just raw space.
Filesystem (like ext4) organizes files so they can be stored and read.

5. Mounting

Mounting means attaching a storage device to a folder.
Example: If I mount at /mnt/data, all files I save there go to my Logical Volume.

🔹 Commands I Practiced
1. Check available disks
lsblk

2. Create Physical Volumes (PVs)
sudo pvcreate /dev/xvdf /dev/xvdg

3. Create a Volume Group (VG) from 10GB + 12GB
sudo vgcreate vg_gp /dev/xvdf /dev/xvdg

4. Create a Logical Volume (LV) of 10GB from the VG
sudo lvcreate -n lv_data -L 10G vg_gp

5. Make a filesystem on the LV
sudo mkfs.ext4 /dev/vg_gp/lv_data

6. Mount the LV to a folder
sudo mkdir -p /mnt/data
sudo mount /dev/vg_gp/lv_data /mnt/data

7. Verify the mount
df -h /mnt/data

🔹 Verification Commands

pvs → show Physical Volumes
vgs → show Volume Groups
lvs → show Logical Volumes
lsblk → show block devices
df -h → show mounted filesystems

🔹 Summary of My Learning

EBS volumes = raw storage.
LVM = combines disks into a flexible pool.
PV → VG → LV = the structure of LVM.
Filesystem (ext4) makes the LV usable.
Mounting connects LV to a folder like /mnt/data.


I successfully created a 10GB Logical Volume from a 22GB pool (10GB + 12GB EBS).

