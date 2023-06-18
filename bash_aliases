# -----------------------------------------------------------------------------
# Navigation aliases
# -----------------------------------------------------------------------------

# Convenience access to parent directories.
alias ..="cd .."
alias ...="cd ..; cd .."
alias ....="cd ..; cd ..; cd .."
alias .....="cd ..; cd ..; cd ..; cd .."
alias ......="cd ..; cd ..; cd ..; cd ..; cd .."

# Detailed ls output.
alias ll="ls -lh"
alias lt="ls -lhtr"
alias lS="ls -lhS"
alias lSr="ls -lhSr"
alias la="ls -lhad .*"
alias lat="ls -lhadtr .*"
alias laS="ls -lhadS .*"
alias laSr="ls -lhadSr .*"

# Copy, move, delete files and directories.
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -iv"
alias rmf="rm -fv"

# Disk.
alias du="du -h"
alias df="df -h"

# Ubuntu file navigator.
alias nautilus="nautilus ."

# WSL file explorer.
alias explorer="explorer.exe ."

# -----------------------------------------------------------------------------
# Code
# -----------------------------------------------------------------------------

# .............................................................................
# Python
# .............................................................................

# https://dougie.io/answers/pip-update-all-packages/
alias pip-upgrade="pip freeze --user | cut -d'=' -f1 | xargs -n1 pip install -U"
alias pip-upgrade-venv="pip freeze | cut -d'=' -f1 | xargs -n1 pip install -U"

