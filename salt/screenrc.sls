/root/.screenrc:
  file.managed:
    - source: salt://files/screenrc

/root/screenlogs:
  file.directory:
    - makedirs: True
