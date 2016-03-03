memcached:
  salt.state:
    - tgt: 'roles:memcached.server'
    - tgt_type: grain
    - sls: memcached

