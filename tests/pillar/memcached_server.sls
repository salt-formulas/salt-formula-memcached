memcached:
  server:
    enabled: true
    cache_size: 64
    slabsize: 2m
    bind:
      address: 0.0.0.0
      port: 11211
      protocol: tcp

