# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="gitster"


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
plugins=(git)

# User configuration
# 
export PATH=/Users/AndyChang/Library/Android/sdk/tools:/Users/AndyChang/Developer/GitHub/dex-method-counts:/Users/AndyChang/Developer/GitHub/dex-method-counts/build/distributions/dex-method-counts/bin:$HOME/bin:/usr/local/bin:/Users/AndyChang/Library/Android/sdk/platform-tools:~/bin:$PATH

export PATH=/opt/local/bin:$PATH

export ANDROID_SDK_ROOT=/Users/AndyChang/Library/Android/sdk/:$ANDROID_SDK_ROOT

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
# source /Users/AndyChang/script/myscript.sh

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
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"


export PATH="/Users/AndyChang/script:/usr/local/sbin:$PATH"

alias ll='ls -alh'
# alias eadb='~/script/eadb.python'

alias killadb='eadb kill-server \ eadb devices'
# alias emptytrash='rm -rf ~/.Trash'
alias emptytrash='sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl'
alias updatedev='sh /Users/AndyChang/Tencent/workDev/up.sh'
alias cf="eadb shell dumpsys window | grep -E 'mCurrentFocus|mFocusedApp'"
alias da='eadb shell dumpsys activity activities'
alias stop='eadb shell am force-stop '
alias testapp='eadb shell am start -n com.tencent.wecarapptest/com.tencent.wecarapptest.MainActivity'
alias llmusic='eadb shell ls -Rl /storage/extsd/tencent/wecarmusic'
alias rmmusic='eadb shell ls -R /storage/extsd/tencent/wecarmusic/data ; eadb uninstall com.tencent.wecarmusic ; eadb shell rm -r /storage/extsd/tencent/wecarmusic/data ; eadb shell ls /storage/extsd/tencent/wecarmusic/data'
alias uninstallmusic='eadb uninstall com.tencent.wecarmusic ; eadb shell ls /storage/extsd/tencent/wecarmusic/data'
alias cleanmusic='eadb shell pm clear com.tencent.wecarmusic ; eadb shell ls -R /storage/extsd/tencent/wecarmusic/data ; eadb shell kill -9 `adb shell ps | grep music | cut -c10-15`;adb shell rm -r /storage/extsd/tencent/wecarmusic/data ; eadb shell ls /storage/extsd/tencent/wecarmusic/data'
alias cleanprefmusic='eadb shell rm -r /storage/extsd/tencent/wecarmusic/data/pref ; eadb shell pm clear com.tencent.wecarmusic'
alias android='/Users/AndyChang/Library/Android/sdk/tools/android'
alias agrep='''eadb logcat | grep -v -e 'E/RRCTRL_AVS' | grep'''
alias killmusic="adb shell kill -9 `adb shell ps | command grep music | cut -c10-15`"
alias stopmusic="adb shell am force-stop com.tencent.wecarmusic"
alias grepmusic="eadb logcat | grep `eadb shell ps | command grep music | cut -c10-15` | grep "
alias grepallmusic="eadb logcat | grep `eadb shell ps | command grep music | cut -c10-15`"
alias createsystrace="python ~/Library/Android/sdk/platform-tools/systrace/systrace.py  --time=5 -o mynewtrace.html sched gfx view wm"
alias viewsystrace="open mynewtrace.html"
alias currentapp="eadb shell dumpsys window | grep -E 'mCurrentFocus|mFocusedApp&Window' | cut -d' ' -f6 | cut -d'/' -f 1"
alias currentactivity="eadb shell dumpsys window | grep -E 'mCurrentFocus|mFocusedApp&Window' | cut -d' ' -f6 | cut -d'}' -f 1"

export NVM_DIR="/Users/AndyChang/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias savelog="eadb logcat -v threadtime > log.txt"

# mount the android file image
function mountAndroid { hdiutil attach ~/android.dmg -mountpoint /Volumes/android; }
# unmount the android file image
function umountAndroid() { hdiutil detach /Volumes/android; }
# set the number of open files to be 1024
ulimit -S -n 1024



export http_proxy=http://dev-proxy.oa.com:8080
export https_proxy=http://dev-proxy.oa.com:8080
export no_proxy=localhost,.oa.com,.local


