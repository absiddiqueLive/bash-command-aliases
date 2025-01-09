## Unix/Linux
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias getpath='echo $(pwd)'
alias nkey="ssh-keygen -t rsa"

## Ubuntu
alias clean-all="sudo apt autoremove -y && sudo apt autoclean -y"
alias uuu="sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade && clean-all"

## Directory Location
pp="/home/$USER/Projects/php/"
flp="/home/$USER/Projects/php/fl"

##Apache
#alias afp="go"

#function go ()
#{
#    if [ "$(getpath)" =  "$HOME" ]; then
#	echo "You are in: $(getpath), Action terminated !!!"
#	return 0;
#    fi
#
#    echo "Your in: $(getpath), change permision? [Yes/No]:No"
#    read action
#
#    if [ "$action" != "${action#[Yes]}" ]; then
#    	find $(getpath) -print0 | sudo xargs -0 chown -R www-data:$USER
#	find $(getpath) -type d -print0 | sudo xargs -0 chmod 0775
#	find $(getpath) -type f -print0 | sudo xargs -0 chmod 0664
#    else
#	echo "Action terminated !!!"
#    fi
#}

git_status_filter() {
    local keyword="$1"
    git status --short | awk '{print $2}' | grep -i "$keyword"
}
alias gsf="git_status_filter"
## Git
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gan='git add $(git ls-files -o --exclude-standard)'
alias gau='git add $(git diff --name-only)'
alias gc='git commit -m'
alias gpl='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias gps='git push origin $(git rev-parse --abbrev-ref HEAD)'
alias gplm='gpl origin master'
alias gpsm='gps origin master'
alias gpld='gpl origin develop'
alias gpsd='gps origin develop'
alias gl='git log'
alias gst='git show-ref --tag'
alias gtc='git rev-list -n 1 --abbrev-commit '
alias gpp='gpl && gps'
alias gppm='gplm && gpsm'
alias gppd='gpld && gpsd'
alias gss="git status --short | grep '^\w.'"

## Composer
alias c='composer'
alias ci='c install'
alias cup='c update'
alias cr='c require'
alias cdal='c dump-autoload'

## Laravel
alias lc='php artisan'
alias lrl='lc route:list'
alias lmg='lc migrate'
alias lopt='lc optimize'
alias lcc='lc clear-compiled'

##Python
alias py='python3'

##Django
alias dj='py manage.py'
alias dja='django-admin'

##PHPUnit
alias punit='phpunit_cmd'
alias pucon='punit --generate-configuration'
alias puf='punit --filter '
alias ut='punit'
alias utf='puf'

##Docker
alias dsa='docker ps -q | xargs --no-run-if-empty docker stop'

alias dce='docker compose exec -it'
alias dcea='docker compose exec -it app bash'
