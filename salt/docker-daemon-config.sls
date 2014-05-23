/etc/default/docker:
  file.append:
    - text: |
        DOCKER_OPTS="-D -H unix:///var/run/docker.sock -H tcp://0.0.0.0:4243 --dns 8.8.8.8 --dns 8.8.4.4 -g /var/lib/btrfs_docker -s btrfs"

docker:
  service.running:
    - watch:
      - file: /etc/default/docker

#  -g /var/lib/aufs_docker -s aufs
