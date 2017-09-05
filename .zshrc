# Path to your oh-my-zsh installation.
if [[ `uname` == 'Darwin' ]]
then
  # we are on mac
  export ZSH=/Users/mkurmann/.oh-my-zsh
else
  # we are on linux
  export ZSH=/home/mkurmann/.oh-my-zsh
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

# https://github.com/robwilliams/dotfiles/commit/46c5cda492f03c34151bc46366a621f48ca36d34
unsetopt nomatch

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump brew git-flow rbenv bundler osx colored-man-pages history docker tmuxinator)

# User configuration


if [[ `uname` == 'Linux' ]]
then
  export PATH=$PATH:~/.rbenv/shims:/usr/share
  # export PATH=$PATH:~/.rbenv/shims:~/.rbenv/versions/2.2.3/lib/gems/2.2.0/gems:/usr/share
else
  # fix problem using osx git instead of the brand new one from brew
  alias git="/usr/local/bin/git"
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
fi

export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# export MANPATH="/usr/local/man:$MANPATH"
# https://yarnpkg.com/en/docs/install
export PATH="$PATH:`yarn global bin`"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# EDIT ZSHRC
alias eom="nvim ~/.zshrc"
# Reload after editing ZSHRC
alias rom="source ~/.zshrc"
# edit Neovim config
alias envim="nvim ~/.config/nvim/init.vim"
alias evim='envim'
alias vim="nvim"
alias emux="nvim ~/.tmux.conf.local"
#applications aliases
alias getpplsadb="cx backup list --latest --stack ppl-management2 | grep -Eo '[0-9]{8}' | xargs -n1 cx backup download --stack ppl-management2"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
