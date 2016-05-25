{% from "memcached/map.jinja" import server with context %}

{%- if server.enabled %}

memcached_packages:
  pkg.installed:
  - names: {{ server.pkgs }}

memcached_config:
  file.managed:
  - name: {{ server.config }}
  - template: jinja
  - source: {{ server.config_template }}
  - mode: 644
  - require:
    - pkg: memcached_packages

{%- if grains.get('virtual_subtype', None) == "Docker" %}

memcached_entrypoint:
  file.managed:
  - name: /entrypoint.sh
  - template: jinja
  - source: salt://memcached/files/entrypoint.sh
  - mode: 755

{%- endif %}

memcached_service:
  service.running:
  - enable: True
  - name: {{ server.service }}
  - watch:
    - file: memcached_config

{%- endif %}
