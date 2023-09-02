OVERVIEW
--------
This directory contains start-stop-daemon (SSD), a tool that is used
to control the creation and termination of system-level processes.

This distribution is a fork of CRUX' SSD as of commit 6209edb (Sat Apr
17 2021).  The CRUX' version of SSD is a patched version of Debian's
SSD from dpkg distribution with adjustments for CRUX.

This SSD have the following little differences:
- CRUX' patch by default
- no systemd-related code
- `-e, --env` option to set/remove environment variables
- suckless style build
- various fixes and cleanups

See git log for complete/further differences.

The original sources can be downloaded from:
1. git://crux.nu/tools/start-stop-daemon.git              (git)
2. https://crux.nu/gitweb/?p=tools/start-stop-daemon.git  (web)


REQUIREMENTS
------------
**Build time**:
- C99 compiler
- POSIX sh(1p) and "mandatory utilities"
- GNU/BSD make(1)
- pod2man(1pm) to build man page


INSTALL
-------
The shell commands `make && make install` should build and install
this package.  See `config.mk` file for configuration parameters.


LICENSE
-------
The following files have different licenses:
- `start-stop-daemon.8.pod` is licensed through the GNU General Public
  License v2 <http://gnu.org/licenses/gpl.html>.
- `start-stop-daemon.c` is licensed through Public Domain License
  <https://creativecommons.org/publicdomain/>.

Other files in this distribution are licensed through the same Public
Domain License.
