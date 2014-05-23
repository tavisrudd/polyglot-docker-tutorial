## Note: I'm being lazy and relying on implicit ordering of dependencies here
## rather than explictly stating all the deps.

core-utils:
  pkg.installed:
    - refesh: False
    - pkgs: 
      - htop
      - tree
      - jq
      - screen
      - wget
      - pixz

dev-tools:
  pkg.installed:
    - pkgs:
      - python
      - python-dev
      - python-virtualenv
      - ipython
      - python-pip
      - python-software-properties
      - ruby
      - ruby-dev
      - git
      - vim
      - emacs

net-utils:
  pkg.installed:
    - refesh: False
    - pkgs:
      - iptables
      - lsof
      - tcpdump
      - nmap 
      - netcat
      - netcat-openbsd
      - arping
      - bridge-utils
      - openvswitch-switch

cgroup-bin:
   pkg.installed
libcap-dev:
   pkg.installed
cap2:
   gem.installed

filesystems:
  pkg.installed:
    - pkgs:
      - btrfs-tools
      - aufs-tools

lxc-related:
  pkg.installed:
    - pkgs:
      - lxc
      - lxc-templates

docker-deps:
    pkg.installed:
        - name: linux-image-extra-{{ grains['kernelrelease'] }}

btrfs:
  kmod.present

aufs: 
  kmod.present

docker-io:
    pkgrepo.managed:
        - humanname: Docker container repo
        - name: deb http://get.docker.io/ubuntu docker main
        - file: /etc/apt/sources.list.d/docker.list
        - keyserver: keyserver.ubuntu.com
        - keyid: 36A1D7869245C8950F966E92D8576A8BA88D21E9

    pkg.installed:
      - name: lxc-docker
      - refresh: True
 
docker-python-dockerpy:
  pip.installed:
    - name: docker-py
    - repo: git+https://github.com/dotcloud/docker-py.git

