
include:
{% if pillar.memcached.server is defined %}
- memcached.server
{% endif %}
