# Formats the shell's prompt text.
#
# Husk
# Qianlang Chen
# 05/15/22

source "${BASE_DIR}/../../lib/posh-git-sh/git-prompt.sh"

# Set the prompt format to `user@host:short_working_dir [git_status] $ `
case "${SHELL_NAME}" in
"bash")
	PROMPT_COMMAND="__posh_git_ps1 '\u@\h:\[\e[1m\]\W\[\e[0m\]' ' \[\e[1m\]\$\[\e[0m\] ' "
	;;
"zsh") PS1="%n@%m:%B%1d%b\$(__posh_git_echo) %B\$%b " ;;
esac
