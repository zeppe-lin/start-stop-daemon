project(
  'start-stop-daemon',
  'c',
  version: '2.0.1',
  license: 'GPL-2.0-or-later',
  meson_version: '>=1.2.0',
  default_options: [
    'c_std=c99',
    'warning_level=3',
    'b_ndebug=if-release',
    'b_lto=false',
  ],
)

if host_machine.system() != 'linux'
  error('start-stop-daemon is supported only on Linux platforms')
endif

want_static = get_option('link_mode') == 'static'

libbsd = dependency(
  'libbsd',
  required: get_option('libbsd'),
  static: want_static
)

subdir('internal')
subdir('man')
subdir('src')
