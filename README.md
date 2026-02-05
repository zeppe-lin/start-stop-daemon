OVERVIEW
========

`start-stop-daemon` (SSD) is a utility for controlling the creation
and termination of system-level processes.

This distribution is a fork of CRUX SSD at commit 6209edb
(Sat Apr 17 2021).  The CRUX version itself is a patched variant of
Debian's SSD from the `dpkg` distribution, adjusted for CRUX.

This SSD have the following differences:
  * CRUX build patch applied by default
  * Removed systemd-related code
  * Linux-only (no cross-platform support)
  * Manual page in `scdoc(5)` format
  * New `-e/--env` option to set or remove environment variables
  * Verbose status reporting

See the git log for full history.

The original sources can be downloaded from:
  1. https://git.dpkg.org/git/dpkg/dpkg.git
  2. https://git.crux.nu/tools/start-stop-daemon.git

---

REQUIREMENTS
============

Build time
----------
  * C99 compiler
  * POSIX `sh(1p)`, `make(1p)`, and "mandatory utilities"
  * `scdoc(1)` to generate manual page

**Note:**
`make(1p)` should support POSIX 2024, or use BSD/GNU `make(1)`.

---

INSTALLATION
============

To build and install:

```sh
make
make install   # as root
```

Configuration parameters are defined in `config.mk`.

---

DOCUMENTATION
=============

See `start-stop-daemon.8.scdoc` manual page.

---

LICENSE
=======

This program contains both public domain contributions and
GPL-licensed code.  The combined work is distributed under the terms
of the GNU General Public License, version 2 or (at your option) any
later version.

See [COPYRIGHT](COPYRIGHT) for full authorship and attribution
details.  See [COPYING](COPYING) for the complete license text.
