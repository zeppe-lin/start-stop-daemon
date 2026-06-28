cc = meson.get_compiler('c')
internal_inc = include_directories('.')
conf = configuration_data()

conf.set_quoted('PACKAGE_NAME', meson.project_name())
conf.set_quoted('PACKAGE_VERSION', meson.project_version())

conf.set10(
  'HAVE_CLOCK_MONOTONIC',
  cc.has_function(
    'clock_gettime',
    prefix: '#include <time.h>',
    args: '-D_GNU_SOURCE'
  )
)

conf.set10(
  'HAVE_CLOSE_RANGE',
  cc.has_function(
    'close_range',
    prefix: '#include <unistd.h>',
    args: '-D_GNU_SOURCE'
  )
)

conf.set10(
  'HAVE_GETDTABLESIZE',
  cc.has_function(
    'getdtablesize',
    prefix: '#include <unistd.h>',
    args: '-D_GNU_SOURCE'
  )
)

have_closefrom = false

if libbsd.found()
  if cc.has_function(
    'closefrom',
    prefix: '#include <bsd/unistd.h>',
    args: '-D_GNU_SOURCE',
    dependencies: libbsd,
  )
    have_closefrom = true
  else
    error('libbsd validation failed: closefrom symbol or headers unusable')
  endif
else
  # Native fallback check (Glibc >= 2.34, Musl, BSD)
  if cc.has_function(
    'closefrom',
    prefix: '#include <unistd.h>',
    args: '-D_GNU_SOURCE'
  )
    have_closefrom = true
  endif
endif

conf.set10('HAVE_CLOSEFROM', have_closefrom)

configure_file(
  output: 'config.h',
  configuration: conf,
)
