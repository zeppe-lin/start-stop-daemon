OVERVIEW
========

This repository contains start-stop-daemon (SSD), a tool that is used
to control the creation and termination of system-level processes.

This distribution is a fork of CRUX' SSD as of commit 6209edb (Sat Apr
17 2021).  The CRUX' version of SSD is a patched version of Debian's
SSD from dpkg distribution with adjustments for CRUX.

This SSD have the following little differences:
  * applied CRUX patch by default
  * no systemd-related code
  * manual page in scdoc(5) format
  * new -e/--env option to set/remove environment variables
  * suckless-style build
  * various fixes and cleanups

See git log for complete/further differences.

The original sources can be downloaded from:
  1. https://git.dpkg.org/git/dpkg/dpkg.git
  2. https://git.crux.nu/tools/start-stop-daemon.git


REQUIREMENTS
============

Build time
----------
  * C99 compiler
  * POSIX sh(1p), make(1p) and "mandatory utilities"
  * scdoc(1) to build manual page

**Note:** make(1p) should support POSIX 2024, or use BSD/GNU make(1).

INSTALL
=======

To build and install this package, run:

    make && make install

See config.mk file for configuration parameters.


DOCUMENTATION
=============

See start-stop-daemon.8.scdoc manual page.


LICENSE
=======

The following files have different licenses:
  * `start-stop-daemon.8.scdoc` is licensed through the GNU General
    Public License v2 <http://gnu.org/licenses/gpl.html>.
  * `start-stop-daemon.c` is licensed through the Public Domain
    License <https://creativecommons.org/publicdomain/>.

Other files in this distribution are licensed through the same Public
Domain License.
