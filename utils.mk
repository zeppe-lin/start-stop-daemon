GREP_DEFS = --exclude-dir=.git --exclude-dir=.github -R .

urlcodes:
	@echo "=======> Check URLs for response code"
	@grep -Eiho "https?://[^\"\\'> ]+" ${GREP_DEFS}  \
		| xargs -P10 -I{} curl -o /dev/null      \
		 -sw "[%{http_code}] %{url}\n" '{}'      \
		| sort -u

podchecker:
	@echo "=======> Check PODs for syntax errors"
	@podchecker *.pod

cppcheck:
	@echo "=======> Static C/C++ code analysis"
	@cppcheck --enable=all --check-level=exhaustive  \
		--suppress=missingIncludeSystem ${CURDIR}

.PHONY: urlcodes podchecker shellcheck cppcheck
