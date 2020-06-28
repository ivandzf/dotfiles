# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ivan/.oh-my-zsh"
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  mvn
  npm
  brew
  docker
  github
  ng
  node
  osx
  python
  kubectl
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64" # ssh # export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export GOPATH=/Users/ivan/go
export GOROOT=/usr/local/opt/go/libexec
export GOBIN=$GOPATH/bin
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOBIN
export RG=$GOPATH/src/gitlab.com/ruangguru/source
export GOOGLE_SDK_PATH=/Users/ivan/google-cloud-sdk
export PATH=$GOBIN:$GOROOT/bin:$GOOGLE_SDK_PATH/bin:$GOOGLE_SDK_PATH/path.bash.inc:$GOOGLE_SDK_PATH/completion.bash.inc:$PATH
export PUBSUB_EMULATOR_HOST=localhost:8085
export PUBSUB_PROJECT_ID=dummy-project

alias ls="colorls"
alias grm="go run main.go"
alias python="python3"
alias rg=$RG
alias rgc=$GOPATH/src/gitlab.com/ruangguru/rg-contract

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ivan/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ivan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ivan/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ivan/google-cloud-sdk/completion.zsh.inc'; fi

alias kcrg='kubectl --context gke_silicon-airlock-153323_asia-southeast1-a_ruangguru-k8s'
alias kcgl='kubectl --context gke_silicon-airlock-153323_asia-southeast1_ase1-glo-infra-1'
alias kcid='kubectl --context gke_silicon-airlock-153323_asia-southeast1_ase1-id-prod-1'
alias kcth='kubectl --context gke_silicon-airlock-153323_asia-southeast1_ase1-th-prod-1'
alias kcvn='kubectl --context gke_silicon-airlock-153323_asia-southeast1_ase1-vn-prod-1'
alias kcucrg='kubectl config use-context gke_silicon-airlock-153323_asia-southeast1-a_ruangguru-k8s --namespace=production'
alias kcucgl='kubectl config use-context gke_silicon-airlock-153323_asia-southeast1_ase1-glo-infra-1'
alias kcucid='kubectl config use-context gke_silicon-airlock-153323_asia-southeast1_ase1-id-prod-1 --namespace=production'
alias kcucth='kubectl config use-context gke_silicon-airlock-153323_asia-southeast1_ase1-th-prod-1 --namespace=th-production'
alias kcucvn='kubectl config use-context gke_silicon-airlock-153323_asia-southeast1_ase1-vn-prod-1 --namespace=vn-production'

# POWERLEVEL9K_MODE='nerdfont-complete'
# source  ~/powerlevel9k/powerlevel9k.zsh-theme

# POWERLEVEL9K_CUSTOM_LOGO="echo -n '\uf179'"
# POWERLEVEL9K_CUSTOM_LOGO_FOREGROUND="white"
# POWERLEVEL9K_CUSTOM_LOGO_BACKGROUND="black"

# POWERLEVEL9K_TIME_BACKGROUND=black
# POWERLEVEL9K_TIME_FOREGROUND=white
# POWERLEVEL9K_TIME_FORMAT=%D{%I:%M}

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_logo custom_name ssh dir dir_writable newline vcs status)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
# POWERLEVEL9K_DISABLE_RPROMPT=true
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_PROMPT_ON_NEWLINE=false
# POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%F{white}╭─'
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%F{white}╰%f '

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ivan/.sdkman"
[[ -s "/Users/ivan/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ivan/.sdkman/bin/sdkman-init.sh"
export JAVA_HOME="/Users/ivan/.sdkman/candidates/java/current"
export PATH="$JAVA_HOME/bin:$PATH"

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export LC_ALL=en_US.UTF-8

# RUST Config
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
alias cr="cargo run"

if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

# Android SDK
export ANDROID_HOME="/Users/ivan/Documents/AndroidSDK"

alias tx="tmux new-session \; split-window -v -p 25\;"

source <(stern --completion=zsh)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
