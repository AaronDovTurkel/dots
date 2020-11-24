# Commands
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/-(\1)/'
}

run-ezp-front_end() {
  cd ~/Dev/ezp ; npm start;
}

run-ezp-back_end() {
  cd ~/Dev/ez-pricing-shared ;
  start "Ezp.Shared" dotent watch run Ezp.Shared;
  start "Ezp.Identity" dotnet watch run Ezp.Identity;
}


# Temrinal Prompt
PS1="\n\[\e[32;1m\](\[\e[37;1m\]\u\[\e[32;1m\])-(\[\e[37;1m\]\w\[\e[32;1m\])\[\e[36;1m\]\`parse_git_branch\`\n\[\e[32;1m\]-> \[\[\e[0m\]"

# Path mods
export PATH=~/Downloads/nvim-win64/Neovim/bin:$PATH

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Aliases
alias s='npm start'
alias rbp='npm run build --prod'
alias ga='git add .'
alias gc='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias gac='ga; gc'
alias gco='git checkout'
alias src='source ~/.bashrc'
alias sfe='run-ezp-front_end'
alias sbe='run-ezp-back_end'
