pippack:
  pip.installed:
    - pkgs:
      - rpdb

packages:
  pkg.installed:
    - pkgs:
      - salt-ssh
      - salt-api
      - netcat-openbsd
      - vim

salt-api:
  cmd.run:
    - name: salt-api -d -l debug
    - unless: pgrep salt-api
    - require:
      - pkg: packages
