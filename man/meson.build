if get_option('manpages')
  scdoc = find_program('scdoc')

  foreach section, pages: {
    '8': [ 'start-stop-daemon' ],
  }
    foreach page: pages
      name = page + '.' + section

      custom_target(
        name,
        input: name + '.scdoc',
        output: name,
        command: [scdoc],
        feed: true,
        capture: true,
        install: true,
        install_dir: get_option('mandir') / ('man' + section),
        install_tag: 'man',
      )
    endforeach
  endforeach
endif
