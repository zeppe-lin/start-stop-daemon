ABOUT
-----
This directory contains _start-stop-daemon_ (_SSD_), a tool that is
used to control the creation and termination of system-level
processes.

This distribution is a fork of CRUX' _SSD_ as of commit 6209edb
(Sat Apr 17 2021).  The CRUX' version of _SSD_ is a patched version
of Debian's _SSD_ from dpkg distribution with adjustments for CRUX.
This _SSD_ have the following little differences:
  * applied CRUX' patch by default
  * removed systemd-related code
  * build files have been adjusted to suckless style

See git log for complete/further differences.

The original sources can be downloaded from:
  1. git://crux.nu/tools/start-stop-daemon.git
  2. https://crux.nu/gitweb/?p=tools/start-stop-daemon.git;a=summary

REQUIREMENTS
------------
Build time:
  * c99 compiler
  * POSIX sh(1p), make(1p) and "mandatory utilities"
  * pod2man(1pm) to build man page

Tests:
  * podchecker(1pm) to check PODs for errors
  * curl(1) to check URLs for response code

INSTALL
-------
The shell commands `make && make install` should build and install
this package.  See _config.mk_ file for configuration parameters.

The shell command `make check` should start some tests.

LICENSE
-------
The following files have different licenses:
  * `start-stop-daemon.8.pod` is licensed through the GNU General
    Public License v2 <http://gnu.org/licenses/gpl.html>.
  * `start-stop-daemon.c` is licensed through Public Domain License
    <https://creativecommons.org/publicdomain/>.

Other files in this distribution are licensed through the same
Public Domain License.

<!-- vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
End of file. -->
