# THIS FILE IS CONTROLLED BY CHEZMOI - USE `chezmoi edit`
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export BAT_THEME=Dracula
export EDITOR=nvim

if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
# Sensitive exports
if [ -f ~/.bash_exports ]; then
  . ~/.bash_exports
fi

# if ! ssh-add -l >> /dev/null; then /usr/bin/ssh-add -q --apple-load-keychain; fi
# 1Password SSH Agent
export SSH_AUTH_SOCK=~/.1password/agent.sock

# fzf
eval "$(fzf --bash)"

# Starship prompt
source <(starship init bash)

. /opt/homebrew/opt/asdf/libexec/asdf.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

