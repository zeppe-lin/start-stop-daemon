start-stop-daemon - start and stop system daemon programs
=========================================================
start-stop-daemon (SSD) is used to control the creation and
termination of system-level processes.

This distribution is a fork of CRUX' SSD as of commit 6209edb
(Sat Apr 17 2021).  The CRUX' version of SSD is a patched version of
Debian's SSD from dpkg distribution with adjustments for CRUX.  This
SSD have been applied these adjustments by default.  The
systemd-related code have been removed.  Also, the build files have
been rewritten.

The original sources can be downloaded from:

  1. https://crux.nu/gitweb/?p=tools/start-stop-daemon.git;a=summary
  2. git://crux.nu/tools/start-stop-daemon.git


Dependencies
------------
Build time:
- c99 compiler
- podchecker(1p) and pod2man(1p) from perl distribution to build man
  page


Install
-------
The shell commands `make; make install` should build and install this
package.  See `config.mk` file for configuration parameters.


License and Copyright
---------------------
Start-stop-daemon is licensed through the GNU General Public License
v2 (for `start-stop-daemon.8.pod`) and Public Domain (for
`start-stop-daemon.c` and other files).

See <https://gnu.org/licenses/gpl.html> and
<https://creativecommons.org/publicdomain/> respectively for the
complete licenses.

<!-- vim:cc=72:tw=70
End of file. -->
