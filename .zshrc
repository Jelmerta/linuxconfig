if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#autoload -Uz compinit promptinit
#compinit
#promptinit

#prompt walters

# idk power settings do not seem to load on boot, starting powerdevil seems to fix it? if it does, just load this on startup?
#killall org_kde_powerdevil
kstart5 /usr/lib/org_kde_powerdevil 2> /dev/null

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=13
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias xlogs="cat /var/log/Xorg.0.log"
alias xlogs2="cat ~/.local/share/xorg/Xorg.1.log"

export PATH="$HOME/.local/bin:$PATH"
export PATH="/home/jelmer/.stack/programs/x86_64-linux/ghc-tinfo6-8.10.7/lib/ghc-8.10.7:$PATH"
export PATH="/home/jelmer/eclipse:$PATH"

#ALIASES

alias i3config="nvim ~/.config/i3/config"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias br="brave &"
alias torrent="qbittorrent &"
alias alacconfig="vim ~/.config/alacritty/alacritty.yml"
alias SE="cd /home/jelmer/Documents/Software\ Engineering"
alias EVOL="cd /home/jelmer/Documents/Software\ Engineering/Software\ Evolution"
alias PMP="cd /home/jelmer/Documents/Software\ Engineering/PMP"
alias SP="cd /home/jelmer/Documents/Software\ Engineering/Software\Process"
alias DO="cd /home/jelmer/Documents/Software\ Engineering/DevOps"
alias roficonfig="nvim ~/.config/rofi/roficonf"
alias datanose="brave https://datanose.nl/#timetable[42547](0,0) &"
alias multiscreenhome="xrandr --output DP-1  --auto --right-of eDP-1"
alias multiscreenhomer="xrandr --output DP-1  --auto --left-of eDP-1"
alias screenuva="xrandr --output HDMI-1 --auto --above eDP-1 --output DP-1 --auto --rotate left --right-of HDMI-1"
alias onescreen="xrandr -s 0"
alias vim="nvim"
alias twitchtoken="twitch token -u -s 'user:read:follows'"
alias twitchfollowers="twitch api get streams/followed -q user_id=25204184 | jq '.data[].user_login'"
twitchwatch() {
	streamlink -p mpv --twitch-disable-ads twitch.tv/"$1" best &!
}
twitchwatch streamer
alias dest="streamlink -p mpv --twitch-disable-ads twitch.tv/destiny best &!"

alias restartmouse="sudo modprobe -r psmouse; sudo modprobe psmouse"
# Git
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gc='git checkout'
alias gpu='git pull'

# Can probably be done differently using a config file, works for now.
#xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1
#synclient TapButton1=1 TapButton2=3 TapButton3=2
#xinput set-prop 14 316 1

pgrep redshift | xargs -n1 kill -9
redshift &> /dev/null &!
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
