
======
Usage
======

Memcached is an in-memory key-value store for small chunks of arbitrary data
(strings, objects) from results of database calls, API calls, or page
rendering.

Sample Metadata
===============

.. code-block:: yaml

    memcached:
      server:
        enabled: true
        cache_size: 64
        slabsize: 1m
        bind:
          address: 0.0.0.0
          port: 11211
          protocol: tcp


References
==========

* http://memcached.org/


Documentation and Bugs
======================

* http://salt-formulas.readthedocs.io/
   Learn how to install and update salt-formulas

* https://github.com/salt-formulas/salt-formula-memcached/issues
   In the unfortunate event that bugs are discovered, report the issue to the
   appropriate issue tracker. Use the Github issue tracker for a specific salt
   formula

* https://launchpad.net/salt-formulas
   For feature requests, bug reports, or blueprints affecting the entire
   ecosystem, use the Launchpad salt-formulas project

* https://launchpad.net/~salt-formulas-users
   Join the salt-formulas-users team and subscribe to mailing list if required

* https://github.com/salt-formulas/salt-formula-memcached
   Develop the salt-formulas projects in the master branch and then submit pull
   requests against a specific formula

* #salt-formulas @ irc.freenode.net
   Use this IRC channel in case of any questions or feedback which is always
   welcome
