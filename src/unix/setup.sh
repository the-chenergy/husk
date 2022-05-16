# Sets up the current shell for when the shell launches.
#
# Husk
# Qianlang Chen
# 05/15/22

SHELL_NAME=$(
  if test -n "${BASH_VERSION}"; then
    echo "bash"
  elif test -n "${ZSH_VERSION}"; then
    echo "zsh"
  fi
)
BASE_DIR=$(
  case "${SHELL_NAME}" in
  "bash") echo "$(dirname ${BASH_SOURCE})" ;;
  "zsh") echo "$(dirname $0)" ;;
  esac
)

source ${BASE_DIR}/prompt.sh
source ${BASE_DIR}/aliases.sh
