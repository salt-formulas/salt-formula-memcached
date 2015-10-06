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

memcached_service:
  service.running:
  - enable: True
  - name: {{ server.service }}
  - watch:
    - file: memcached_config

{%- endif %}
