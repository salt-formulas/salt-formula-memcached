======================
Memcached cache server
======================

Install and configure Memcached server

Available states
================

.. contents::
    :local:

``memcached.server``
--------------------

Setup Memcached server

Available metadata
==================

.. contents::
    :local:

``metadata.memcached.server.single``
------------------------------------

Single memcached server

``metadata.memcached.server.local``
-----------------------------------

Memcached server listening on localhost only

Configuration parameters
========================


Example reclass
===============

Single node memcached service, default parameters but modified cache size.

.. code-block:: yaml

   classes:
   - service.memcached.server.single

   parameters:
    memcached:
      server:
        cache_size: 64

Sample pillar
=============

.. code-block:: yaml

    memcached:
      server:
        enabled: true
        cache_size: 64
        bind:
          address: 0.0.0.0
          port: 11211
          protocol: tcp

Read more
=========

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
