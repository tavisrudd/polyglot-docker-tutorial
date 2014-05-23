logentries-install:
  pkgrepo.managed:
    - humanname: logentries repo
    - name: deb http://rep.logentries.com/ saucy main
    - file: /etc/apt/sources.list.d/logentries.list
    - keyserver: pgp.mit.edu
    - keyid: C43C79AD

  cmd.run:
    - name: |
       gpg --keyserver pgp.mit.edu --recv-keys C43C79AD && \
         gpg -a --export C43C79AD | apt-key add -
    - unless: apt-key list | grep logentries

  pkg.installed:
    - name: logentries
    - refresh: True

logentries-registered:
  cmd.run:
    - template: jinja
    - name: | 
        le register --name="{{grains.id}}" --account-key=883b7880-f3e8-4f98-82ae-f1430f8bb658
        le follow /var/log/lastlog
        le follow /var/log/auth.log
        le follow /var/log/syslog
        le follow /var/log/kern.log
        le follow /var/log/salt/minion
        le follow /var/log/docker-containers.log
        le follow /var/log/upstart/docker.log
        le follow /var/log/upstart/salt-minion.log
        le follow /root/screenlogs/screenlog.0
        le follow /root/screenlogs/screenlog.1
        rm -f /tmp/logentries-kick
        touch /tmp/logentries-updated
    - unless: le whoami | grep -v required && [[ ! -e /tmp/logentries-kick ]]

/etc/rsyslog.conf:
  file.exists

rsyslog:
  service.running:
    - enable: True
    - watch:
      - file: /etc/rsyslog.conf

logentries-rsyslog-config:
  file.append:
    - name: /etc/rsyslog.conf
    - template: jinja
    - text:
      - '$template Logentries,"f6157aa1-4a9b-4d93-a4f7-d5fc5450e845 {{grains.id}} %syslogtag%%msg%\n"'
      - '*.* @@api.logentries.com:10000;Logentries'

/tmp/logentries-updated:
  file.absent

logentries-daemon:
  pkg.installed:
    - name: logentries-daemon
    - refresh: True
  service.running:
    - name: logentries
    - watch: 
      - file: /tmp/logentries-updated
