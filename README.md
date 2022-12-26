ABOUT
-----
This directory contains *start-stop-daemon* (*SSD*), a tool that is
used to control the creation and termination of system-level
processes.

This distribution is a fork of CRUX' *SSD* as of commit 6209edb
(Sat Apr 17 2021).  The CRUX' version of *SSD* is a patched version
of Debian's *SSD* from dpkg distribution with adjustments for CRUX.
This *SSD* have been applied these adjustments by default.  The
systemd-related code have been removed.  Also, the build files
have been rewritten.
See git log for further differences.

The original sources can be downloaded from:
1. git://crux.nu/tools/start-stop-daemon.git
2. https://crux.nu/gitweb/?p=tools/start-stop-daemon.git;a=summary

REQUIREMENTS
------------
**Build time:**
- c99 compiler
- POSIX sh(1p), make(1p) and "mandatory utilities"
- pod2man(1pm)

**Tests:**
- podchecker(1pm) to check POD for errors
- httpx(1) to check URLs for non-200 response code

INSTALL
-------
The shell command `make install` should build and install this
package.

The shell command `make check` should start some tests like
checking POD for errors, checking URLs for non-200 response code,
etc.

LICENSE
-------
- `start-stop-daemon.8.pod` is licensed through the GNU General Public
License v2 <http://gnu.org/licenses/gpl.html>.

- `start-stop-daemon.c` is licensed through Public Domain License
<https://creativecommons.org/publicdomain/>.

Other files in this distribution are licensed through the same
Public Domain License.

<!-- vim:sw=2:ts=2:sts=2:et:cc=72:tw=70
End of file. -->
