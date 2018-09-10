[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Load in the git branch prompt script.
source ~/.git-prompt.sh
PS1="\[$GREEN\]\t\[$RED\]-\[$BLUE\]\u\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$MAGENTA\]\$(__git_ps1)\[$WHITE\]\$ "

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

. ~/.bashrc

export PATH=$PATH:~/

export PATH=$PATH:/Users/nell/bin

source '/Users/nell/lib/azure-cli/az.completion'

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
	export TERM='xterm-256color'
else
	export TERM='xterm-color'
fi

export RUST_SRC_PATH=.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src/

export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
