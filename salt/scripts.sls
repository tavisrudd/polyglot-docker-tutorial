/usr/local/bin/dockhack:
  file.managed:
    - source: salt://scripts/dockhack
    - mode: 755
