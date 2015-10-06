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
