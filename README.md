OVERVIEW
========

`start-stop-daemon` (SSD) is a utility for controlling the creation
and termination of system-level processes.

This distribution is a fork of CRUX SSD at commit 6209edb
(Sat Apr 17 2021).  The CRUX version itself is a patched variant of
Debian's SSD from the `dpkg` distribution, adjusted for CRUX.

This SSD have the following differences:
  * CRUX modifications applied by default
  * Removed systemd-related code
  * Linux-only (no cross-platform support)
  * Manual page in `scdoc(5)` format
  * New `-e/--env` option to set or remove environment variables
  * Verbose status reporting

See the git log for full history.

The original sources can be downloaded from:
  1. https://git.dpkg.org/git/dpkg/dpkg.git (upstream)
  2. https://git.crux.nu/tools/start-stop-daemon.git (CRUX)

---

REQUIREMENTS
============

Build time
----------
  * C99 compiler
  * Meson
  * Ninja
  * `scdoc(1)` to generate manual pages
    (enabled by default via the `manpages` option)
  * `libbsd` to provide explicit `closefrom` support
    (disabled by default via the `libbsd` option)

**Note on closefrom(3) support:**
  * **Glibc >= 2.34** provides `closefrom` natively in core standard
    libc.  If you are building on a modern Glibc host system, you do
    not need `libbsd` at all; set `-Dlibbsd=disabled` and the build
    system will safely resolve it via native headers.
  * **Musl systems** do not implement `closefrom` in standard libc.
    The build system will cleanly fall back to native Linux
    `close_range()` or a sequential descriptor tracking loop when
    `libbsd` is disabled.

---

INSTALLATION
============

General
-------

```sh
# Configure
meson setup build

# Compile
meson compile -C build

# Install
meson install -C build
```

Link Mode
---------

`start-stop-daemon` can be built against shared or static
`libc`/`libbsd`.

Shared:

```sh
meson setup build -D link_mode=shared
meson compile -C build
```

Static:

```sh
meson setup build -D link_mode=static
meson compile -C build
```

For generic static packaging, keep LTO disabled unless the whole
toolchain is prepared for static LTO archives.

---

DOCUMENTATION
=============

Manual page is provided in `/man` and installed under the system
manual hierarchy.

---

LICENSE
=======

This program contains both public domain contributions and
GPL-licensed code.  The combined work is distributed under the terms
of the GNU General Public License, version 2 or (at your option) any
later version.

See [COPYRIGHT](COPYRIGHT) for full authorship and attribution
details.  See [COPYING](COPYING) for the complete license text.
