/mnt:
  mount.unmounted

mkfs_btrfs:
  cmd.run:
     - name: 'umount /mnt/btrfs; mkfs.btrfs -f /dev/xvdb'
     - unless: |
        [[ "$(blkid -s TYPE -o value /dev/xvdb)" == "btrfs" ]]

/mnt/btrfs:
  file.directory:
    - makedirs: True
  mount.mounted:
    - device: /dev/xvdb
    - fstype: btrfs
    - mkmnt: True

/mnt/btrfs/docker:
  file.directory:
    - makedirs: True

/mnt/btrfs/docker_volumes:
  file.directory:
    - makedirs: True

/var/lib/btrfs_docker:
  file.symlink:
    - target: /mnt/btrfs/docker

/var/lib/aufs_docker:
  file.directory:
    - makedirs: True
