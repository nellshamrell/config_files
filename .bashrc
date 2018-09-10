alias redis='sudo redis-server /usr/local/etc/redis.conf'
alias whoisusing='lsof -i'
alias nuke_docker='docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker system prune && docker volume ls -q -f 'dangling=true' | xargs docker volume rm'
alias tf='terraform'


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$GOPATH" # Add GOPATH to PATH for scripting

export HAB_AUTH_TOKEN=""

complete -C /usr/local/bin/vault vault
