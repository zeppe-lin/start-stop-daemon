OVERVIEW
========

This repository contains `start-stop-daemon` (SSD), a tool that is
used to control the creation and termination of system-level
processes.

This distribution is a fork of CRUX' SSD as of commit 6209edb (Sat Apr
17 2021).  The CRUX' version of SSD is a patched version of Debian's
SSD from `dpkg` distribution with adjustments for CRUX.

This SSD have the following little differences:
  * applied CRUX patch by default
  * no systemd-related code
  * no cross-platform, linux-only
  * manual page in `scdoc(5)` format
  * new `-e/--env` option to set/remove environment variables
  * add verbose status reporting

See git log for complete/further differences.

The original sources can be downloaded from:
  1. https://git.dpkg.org/git/dpkg/dpkg.git
  2. https://git.crux.nu/tools/start-stop-daemon.git

---

REQUIREMENTS
============

Build time
----------
  * C99 compiler
  * POSIX `sh(1p)`, `make(1p)` and "mandatory utilities"
  * `scdoc(1)` to build manual page

**Note**:
`make(1p)` should support POSIX 2024, or use BSD/GNU `make(1)`.

---

INSTALL
=======

To build and install this package, run:

```sh
make && make install
```

See `config.mk` file for configuration parameters.

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
