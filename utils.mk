GREPOPT = --exclude-dir=.git --exclude-dir=.github -R .
FINDOPT = -not \( -path "./.git*" -or -path ".*~" \)
MAXLINE = 80

deadlinks:
	@echo "=======> Check for dead links"
	@grep -Eiho "https?://[^\"\\'> ]+" ${GREPOPT}  \
		| xargs -P10 -I{} curl -o /dev/null    \
		 -sw "[%{http_code}] %{url}\n" '{}'    \
		| grep -v '^\[200\]'                   \
		| sort -u

podchecker:
	@echo "=======> Check PODs for syntax errors"
	@podchecker *.pod

shellcheck:
	@echo "=======> Check shell scripts for syntax errors"
	@grep -m1 -l '^#\s*!/bin/sh' ${GREPOPT} | xargs -L10 shellcheck -s sh

cppcheck:
	@echo "=======> Static C/C++ code analysis"
	@cppcheck --enable=all --check-level=exhaustive  \
		--suppress=missingIncludeSystem .

longlines:
	@echo "=======> Check for long lines (> ${MAXLINE})"
	@find . -type f ${FINDOPT} -exec awk -v ML=${MAXLINE} \
		'length > ML { print FILENAME ":" FNR " " $$0 }'  {} \;

.PHONY: deadlinks podchecker shellcheck cppcheck longlines
