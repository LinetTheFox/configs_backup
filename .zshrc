# In case of MacOS - we need to set CLICOLOR to true so it actually shows the color in cli
export CLICOLOR=1
NEWLINE=$'\n'
export PS1="%F{magenta}┌─[%F{blue}%n%F{cyan}@%F{blue}%m%F{blue}%F{magenta}]─[%F{green}%1~%F{magenta}]${NEWLINE}└─%# %F{reset_color}"
