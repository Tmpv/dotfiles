# Path to your oh-my-zsh installation.
  export ZSH=/home/toma/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

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
plugins=(git docker-compose)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export LC_ALL="en_US.UTF-8"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

alias clear_merged_branches="git branch --merged | grep -v '\*' | xargs -n 1 git branch -d"
alias hmocha="dco run --rm hot_assets ./node_modules/mocha/bin/mocha tests/.setup.js"
alias hwmocha="dco run --rm hot_assets node ./node_modules/mocha-webpack/bin/mocha-webpack --webpack-config tests/webpack.test.config.babel.js"

RUBY_DEP_GEM_SILENCE_WARNINGS=1
export npm_config_loglevel="error"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias sub ='subl'
source ~/.bin/tmuxinator.zsh
postman=/home/toma/.postman/Postman

export BUNDLER_EDITOR='vim'
export DOCKER_HOST_IP=localhost
export GITHUB_TOKEN=82d6246965f95448e771e4acddf6fe20e14443ad

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/toma/apps/scripts/translations
export PATH=$PATH:/home/toma/.local/bin

# Kubectl objects autocomplite
if [ $commands[kubectl] ]; then
 source <(kubectl completion zsh)
fi

# UI App dev specific:
# Set puma concurrency to 1 so we don't have to deal with overlapping
# requests when debugging with `binding.pry`
export PUMA_WEB_CONCURRENCY=1
export PUMA_MAX_THREADS=1
export PUMA_MIN_THREADS=1
export PUMA_WORKER_TIMEOUT=999999

# Mt4ReportServerConfig
export MT4_REPORT_SERVER_HOST=104.155.120.254
export MT4_REPORT_SERVER_DB=mt4-real-report-tableau
export MT4_REPORT_SERVER_USER=tableau
export MT4_REPORT_SERVER_PASSWORD=Kbx1qDvDGM

# Obelix service configurations
export OBELIX_HOST=35.187.17.171
export OBELIX_PORT=5038
export OBELIX_USER=obelix
export OBELIX_SECRET=db1d14079861feef82f15b3673c74b29


export CONRAD_CONFIG_FILE='/home/toma/.conrad_config.yaml'

export EDITOR='vim'

source ~/.bin/tmuxinator.zsh

# Get ride of spring
export DISABLE_SPRING=true

export DOCKER_HOST_IP=172.17.0.1

# Work related shorthands
alias start_work='tmuxinator obelix; tmuxinator dogmatix; tmuxinator hype; tmuxinator uiapp; tmuxinator proftit-import; tmux attach'
alias stop_redis_psql='sudo service redis stop; sudo service postgresql stop'
alias start_redis_psql='sudo service redis start; sudo service postgresql start'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm