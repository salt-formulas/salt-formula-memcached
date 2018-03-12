
=================
Memcached Formula
=================

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

To learn how to install and update salt-formulas, consult the documentation
available online at:

    http://salt-formulas.readthedocs.io/

In the unfortunate event that bugs are discovered, they should be reported to
the appropriate issue tracker. Use Github issue tracker for specific salt
formula:

    https://github.com/salt-formulas/salt-formula-memcached/issues

For feature requests, bug reports or blueprints affecting entire ecosystem,
use Launchpad salt-formulas project:

    https://launchpad.net/salt-formulas

You can also join salt-formulas-users team and subscribe to mailing list:

    https://launchpad.net/~salt-formulas-users

Developers wishing to work on the salt-formulas projects should always base
their work on master branch and submit pull request against specific formula.

    https://github.com/salt-formulas/salt-formula-memcached

Any questions or feedback is always welcome so feel free to join our IRC
channel:

    #salt-formulas @ irc.freenode.net
