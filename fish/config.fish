if status is-interactive
    # Commands to run in interactive sessions can go here
end

# === Readme ===
#
# adding path
# fish_add_path -a path
#
# removing path
# echo $PATH
# set --erase --universal fish_user_paths[5]

# === Autorun ===
fastfetch

# === ALIASES ===
alias ls='eza -l --color=always --group-directories-first'
alias ssg='du -h --max-depth=1'
alias ff='cd $(find ~/ -type d \( -name "node_modules" -o -name ".git" -o -name "build" -o -name ".rustup" -o -name .local -o -name .var -o -name ".*" \) -prune -o -type f -o -type d -print | fzf)'
alias sv='python3 -m http.server'
alias play='mpv --no-video'
alias glow='glow -p'

# === Bindings ===
bind \co forward-char

# === Programming Languages

# = Golang
export GOPATH='/home/eikoakiba/go'
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"
export MANPATH="/usr/local/man:$MANPATH"
export PATH="$PATH:$HOME/.local/bin/helix/"

# === Tools / SDK

# = PspDev
export PSPDEV="$HOME/dev/pspdev"
export PATH="$PATH:$PSPDEV/bin"

# === Defaults
set -gx EDITOR "/usr/bin/vim"
set -gx NVIM_APPNAME "nvim"
set -U fish_greeting ""

# My first ever function
function hello
  echo "hello"
end

# Dynamic Tmux session controller
function tmn
  set res = (tmux ls)
  if string match "*coding*" $res 
    notify-send "Tmux" "Entering already available tmux session"
    tmux attach -t coding
    # echo "Hello"
  else
    notify-send "Tmux" "Creating new tmux session"
    tmux new -s coding
  end
end

# Internet Proxy Check
function chnet
  proxychains4 -q curl -w "%{http_code}" -o NUL -L -s https://youtube.com
  # proxychains4 -q curl -I youtube.com
end

starship init fish | source
fish_vi_key_bindings

# # OpenClaw Completion
# source "/home/eikoakiba/.openclaw/completions/openclaw.fish"
