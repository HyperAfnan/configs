z() {
	if [ -n "$1" ]; then
		builtin z "$@" && eza -a
	else
		builtin z ~ && eza -a
	fi
}

h() {
	history 0 | grep $1
}

ya() {
	for pkg in $@; do
		yarn add $pkg
		yarn add -D @types/$pkg &>/dev/null || echo "No separate types for $pkg"
	done
}

yr() {
	for pkg in $@; do
		yarn remove $pkg
		yarn remove @types/$pkg &>/dev/null
	done
}

mkc() {
	mkdir -p "$1" && cd "$1" || return 1
}

batdiff() {
	git diff --name-only --diff-filter=d | xargs bat --diff
}

gitignore() {
	touch .gitignore
	for files in $@; do
		echo "${files}" >>.gitignore
	done
}

ff() {
	IFS=$'\n' files=($(fzf --query="$1" --multi --select-1 --exit-0 --prompt 'files:'))
	[[ -n "$files" ]] && ${EDITOR} "${files[@]}"
}
