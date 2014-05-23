https://github.com/jpetazzo/pipework.git:
  git.latest:
    - rev: master
    - target: /opt/pipework

/usr/local/sbin/pipework:
  file.symlink:
    - target: /opt/pipework/pipework
