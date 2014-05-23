install-nsenter:
  cmd.run:
    - name: |
       cd /tmp
       curl https://www.kernel.org/pub/linux/utils/util-linux/v2.24/util-linux-2.24.tar.gz  | tar -zxf-
       cd util-linux-2.24
       ./configure --without-ncurses &> /dev/null
       make nsenter &> /dev/null
       cp nsenter /usr/local/bin
    - cwd: /tmp
    - timeout: 500
    - unless: test -x /usr/local/bin/nsenter
