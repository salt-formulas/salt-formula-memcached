{%- from "memcached/map.jinja" import server with context -%}
#!/bin/sh

/usr/bin/memcached -m {{ server.cache_size }} \
    -l {{ server.bind.address }} -p {{ server.bind.port }} -U {{ server.bind.port }} \
    -u memcache -c {{ server.incomming_connections }} -t {{ server.threads }}

{#-
vim: syntax=jinja
-#}
