common_deps = [libbsd]
common_incs = [internal_inc]

if want_static
  add_project_arguments('-static', language: 'c')
  add_project_link_arguments('-static', language: 'c')

  # For static binaries, PIC is overhead; disable it for O(1)
  # addressing.
  add_project_arguments('-fno-PIC', language: 'c')
endif

exe_kwargs = {
  'dependencies': common_deps,
  'include_directories': common_incs,
  'install': true,
}

executable(
  'start-stop-daemon',
  'start-stop-daemon.c',
  kwargs: exe_kwargs,
  install_dir: get_option('sbindir')
)
