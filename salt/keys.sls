/root/.ssh/authorized_keys:
  file.append:
    - sources:
      - salt://files/authorized_keys

/home/ubuntu/.ssh/authorized_keys:
  file.append:
    - sources:
      - salt://files/authorized_keys
