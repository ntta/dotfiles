set fish_greeting ""

set -gx TERM xterm-256color

# theme
# set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 1
# set -g theme_display_user yes
# set -g theme_hide_hostname no
set -g theme_hostname always

# Tmux
alias ide2="tmux split-window -v -p 20"
alias ide4="tmux split-window -v -p 30; tmux split-window -h -p 66; tmux split-window -h -p 50"

# Notes
# alias notes="mkdir -p ~/src/notes; cd ~/src/notes; vim (echo -n (date +%b\ %d\ %Y)).md"
function notes --argument-names filename
  set -l today (date +%b-%d-%Y)
  set -l todayFilename $today.md

  mkdir -p ~/src/notes
  cd ~/src/notes

  if test (count $argv) = 0
    if not test -f $todayFilename
      echo \# $today > $todayFilename
    end

    vim $todayFilename
  else
    vim $filename.md
  end
end

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

nvm use stable --silent

function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

# EXA
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end
fish_add_path /usr/local/opt/postgresql@11/bin
