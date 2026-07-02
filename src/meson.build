common_deps = [libbsd]
common_incs = [internal_inc]
common_link_args = []

if want_static
  common_link_args += ['-static']
endif

exe_kwargs = {
  'dependencies': common_deps,
  'include_directories': common_incs,
  'link_args': common_link_args,
  'pie': not want_static,
  'install': true,
}

executable(
  'start-stop-daemon',
  'start-stop-daemon.c',
  kwargs: exe_kwargs,
  install_dir: get_option('sbindir')
)
