/usr/local/bin/dockhack:
  file.managed:
    - source: https://raw.githubusercontent.com/tavisrudd/dockhack/master/dockhack
    - source_hash: 510918b469d9d678df7bc3fa098c6794
    # from commit 341061d on May 30, 2014
    - mode: 755

/root/bin/start:
  file.managed:
    - source: salt://scripts/start.sh
    - mode: 755
    - makedirs: True

/root/bin/screen-stuff:
  file.managed:
    - source: salt://scripts/screen-stuff
    - mode: 755
    - makedirs: True
