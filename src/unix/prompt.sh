# Formats the shell's prompt text.
#
# Husk
# Qianlang Chen
# 05/16/22

source "${BASE_DIR}/../../lib/posh-git-sh/git-prompt.sh"

# Posh Git echo with custom format that:
# - Replaces bright colors with gray
# - Hides stats with value zero
function __git_status() {
	local s=$(echo $(__posh_git_echo) | sed "s@\[0;9[0-9]m@\[0m@g" | sed "s@ [+~-]0@@g")
	if test -n "${s}"; then
		echo " ${s}"
	fi
}

# Set the prompt format to `short_working_dir [git_status] $ `.
case "${SHELL_NAME}" in
"bash")
	function __set_ps1() {
		PS1="\[\e[1m\]\W\[\e[0m\]$(__git_status) \[\e[1m\]\$\[\e[0m\] "
	}
	PROMPT_COMMAND=__set_ps1
	;;
"zsh") PS1="%B%1~%b\$(__git_status) %B\$%b " ;;
esac
