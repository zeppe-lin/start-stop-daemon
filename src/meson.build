common_deps = [libbsd]
common_incs = [internal_inc]
common_c_args = []
common_link_args = []

if want_static
  common_link_args += ['-static']

  # For fully static binaries, position-independent code (PIC) adds
  # unnecessary indirection and relocation overhead.  Disable PIC so
  # objects are built with direct addressing for maximum efficiency.
  common_c_args += ['-fno-PIC']
endif

exe_kwargs = {
  'dependencies': common_deps,
  'include_directories': common_incs,
  'c_args': common_c_args,
  'link_args': common_link_args,
  'install': true,
}

executable(
  'start-stop-daemon',
  'start-stop-daemon.c',
  kwargs: exe_kwargs,
  install_dir: get_option('sbindir')
)
