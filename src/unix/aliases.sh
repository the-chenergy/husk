# Defines the common aliases to use in a Unix shell.
#
# Husk
# Qianlang Chen
# 05/14/22

alias l='ls'

function c() {
  cd $@
  l
}

git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.ck checkout
git config --global alias.co checkout
git config --global alias.sm submodule
git config --global alias.st status

# Prints a visual guidance for how wide the terminal window is.
# ruler <max_ticks>
function ruler() {
  /usr/bin/python3 -c "print(*(f'....:....{i % 10}' for i in range(1, ${1:-12} + 1)), sep='')"
}
