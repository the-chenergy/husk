# Defines the common aliases to use in a Unix shell.
#
# Husk
# Qianlang Chen
# 05/15/22

alias l="ls"

function c() {
  cd $@
  l
}

# Prints a visual guidance for how wide the terminal window is.
# ruler <max_ticks>
function ruler() {
  /usr/bin/python3 -c "print(*(f'....:....{i % 10}' for i in range(1, ${1:-12} + 1)), sep='')"
}
