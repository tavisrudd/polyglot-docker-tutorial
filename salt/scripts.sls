/usr/local/bin/dockhack:
  file.managed:
    - source: salt://scripts/dockhack
    - mode: 755

/root/bin/start:
  file.managed:
    - source: salt://scripts/start.sh
    - mode: 755
    - makedirs: True
