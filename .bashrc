# .bash_profile

alias climate="cd /prod/www/template/manmade/Pages/Climate"
alias graphics="cd /mnt/s3/prod/www/apache/htdocs/data/climate_images"
alias b="cd /netapp1/prod/www/apache/htdocs/hurricane/2014"
alias blog="vim /prod/www/template/manmade/Pages/Resources/blog_archive/jeffmastersblog.cst"
alias tropics="vim /prod/www/template/manmade/Parts/TropicExtLinks.cst"
alias tropics2="vim /prod/www/template/manmade/Parts/TropicHurrArchive.cst"
alias ll="ls -lat | more"
alias cda="cd /software/dist/admin/AS5000"
alias cdc="cd /code/www/findweather/hdf; source ~/.bashrc"
alias cdh="cd /prod/www/apache/htdocs; source ~/.bashrc"
alias sassy="cd /prod/www/apache/htdocs/scss"
alias cdt="cd /prod/www/template/manmade; source ~/.bashrc"
alias cdb="cd /prod/www/template/omnibus; source ~/.bashrc"
alias news="cd /mnt/s3/news"
alias cdwm="cd /prod/www/apache/htdocs/scripts/wundermap/src/wu4/stable/; source ~/.bashrc"
alias cdwm4="cd /prod/www/apache/htdocs/scripts/wundermap/src/wu4/stable/"
alias cdpd="cd /prod/www/template/manmade/Pages/WeatherStation/Dashboard"
alias cdbrands="cd /software/dist/newspaper/newspaper/brands"
alias cdpapers="cd /software/dist/newspaper/newspaper/papers"
alias cdscrapers="cd /prod/www/apache/htdocs/autoasp/scrapers"
alias cdmachines="cd /software/dist/types"

# Source global definitions
if [ -f /etc/bashrc ]; then
		. /etc/bashrc
fi

export WUI_BUILD_ROOT=/code

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

#. /etc/bash_completion.d/git
#export PS1='\u@\e[1;32m\]\h\e[0m\]\e[1;34m\]$(__git_ps1)\e[0m\]:\w \$ '

# Set the default PS1
PS1="\u:\h \W$ "

# Source the git bash completion file
if [ -f /etc/bash_completion.d/git ]; then
	source /etc/bash_completion.d/git
	GIT_PS1_SHOWDIRTYSTATE=1
	GIT_PS1_SHOWSTASHSTATE=1
	PS1='\u@\e[1;32m\]\h\e[0m\]\e[1;34m\]$(__git_ps1)\e[0m\]:\w \$ '
  if [ "$(__git_ps1)" == " (master)" ]; then
      PS1='\u@\e[1;32m\]\h\e[0m\]\e[1;31m\]$(__git_ps1)\e[0m\]:\w \$ '
  fi
  if [ "$(__git_ps1)" == " (master *)" ]; then
      PS1='\u@\e[1;32m\]\h\e[0m\]\e[1;31m\]$(__git_ps1)\e[0m\]:\w \$ '
  fi
fi

export PS1


#Make git log awesome
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"

export PATH=/opt/centos/devtoolset-1.1/root/usr/bin/:$PATH
export PATH=/usr/local/bin/:$PATH
