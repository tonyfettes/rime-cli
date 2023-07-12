rime-cli
========

A simple CLI frontend for rime.

Usage
-----

Input keyevents to be processed, and the input method state will be
printed after processing each key.

Input/output is done via json. The exact format is unstable and
undocumented for now.

Dependencies
------------

rime, json-c, pkg-config (build-time only).

Build
-----

.. code-block:: bash
   make

Or:

.. code-block:: bash
   nix build

If you use ``coc-rime <https://github.com/tonyfettes/coc-rime>_`` on NixOS, try:

.. code-block:: bash
   git clone --depth=1 https://github.com/tonyfettes/rime-cli ~/.config/coc/extensions/coc-rime-data
   cd ~/.config/coc/extensions/coc-rime-data
   nix build
   ln -s result/bin/rime-cli
