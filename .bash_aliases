# THIS FILE IS CONTROLLED BY CHEZMOI - USE `chezmoi edit`
gitmergemain() {
    git fetch origin
    if [ -n "$(git ls-remote --heads origin main)" ]; then
        branch=main
    elif [ -n "$(git ls-remote --heads origin master)" ]; then
        branch=master
    else
        echo "Neither 'main' nor 'master' found as a branch on the remote."
        exit 1
    fi
    git fetch origin $branch
    git merge origin/$branch
}

alias gs='git status'
alias vim='nvim'
alias cat='bat'
alias ll='ls -l --color'
alias k='kubectl'
complete -F __start_kubectl k
alias dcew='docker-compose exec web bash'
alias kimelixir-start='docker compose -f ~/dicefm/kimlexir/.devcontainer/docker-compose.yml up --scale app=0 -d'
