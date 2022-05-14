# Formats the shell's prompt text.
#
# Husk
# Qianlang Chen
# 05/14/22

source $(dirname $0)/../../lib/posh-git-sh/git-prompt.sh

# Check the current shell running and set the prompt format to
# user@host:short_working_dir [git_status] $
case $(ps -o comm -p $$ | tail -n 1 | sed 's/^.*[^A-Za-z\d]//') in
'bash')
	PS1='\u@\h:\w$(__posh_git_echo) \$ '
	;;
'zsh')
	PS1='%n@%m:%B%1d%b$(__posh_git_echo) %B\$%b '
	;;
esac
