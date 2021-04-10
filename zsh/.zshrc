# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
#
#
#
#
#







# PS1='\[\e[33;1m\]tencent\[\e[31;1m\]@\[\e[33;1m\]ubuntu:\[\e[36;1m\]\w\[\e[31;1m\]\$ \[\e[0m\]'
PROMPT='%{$fg[green]%}amd_server@%{$fg[magenta]%}%(?..%?%1v)ubuntu: %{$reset_color%}%{$fg[cyan]%}%~# '

alias v="vim"
alias ping="ping -w 5"
alias pb="ping -w 5 www.baidu.com"
alias pg="ping www.github.com"
alias nb="source ~/.zshrc"
alias vnb="v ~/.zshrc"
alias login="source ~/myspace/work_space/scripts/login.sh"
alias rc="rm *cscope*"
alias push="source ~/myspace/work_space/scripts/push_code.sh"
alias up="source ~/myspace/work_space/scripts/update_code.sh"
alias bu="source ~/myspace/work_space/scripts/build.sh"
alias cs="source ~/myspace/work_space/scripts/cscope.sh"

alias t="tmux"
alias tn="tmux new-session -s"
alias ti="tmux attach-session -t"
alias tk="tmux kill-session -t"
alias tq="tmux detach"
alias tl="tmux ls"
alias tsw="tmux switch -t"

# export PATH=$PATH:/usr/local/arm/arm-none-eabi-2010-09-51/bin
export PATH=$PATH:"/usr/local/ffmpeg/bin"
export PATH=$PATH:"/usr/share/bcc/tools"
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH


#alias ds="docker start run_kernel"
#alias dk="docker stop run_kernel"
#alias di="docker exec -ti run_kernel /bin/bash"
alias dn="sudo docker run -t -i -m 128MB ubuntu /bin/bash"
alias ds="sudo docker start my_ubuntu"
alias dk="sudo docker stop my_ubuntu"
alias di="sudo docker exec -ti my_ubuntu /bin/bash"
alias dps="sudo docker ps"
alias dpsa="sudo docker ps -a"
alias drma="sudo  docker container prune"
alias mb="cd /usr/share/bcc/tools/ "
alias mbd="cd /usr/share/bcc/tools/doc "

alias sb="ls /usr/sbin/ | grep bpf"
alias mf="fetchmail -v"

alias python="/usr/bin/python3"

alias python="/usr/bin/python3"
alias config="make x86_64_defconfig O=/home/ubuntu/workspace/compile/out/ && make menuconfig"
alias build="rm /home/ubuntu/workspace/compile/out/ && mkdir /home/ubuntu/workspace/compile/out/ && cp /home/ubuntu/myspace/.config /home/ubuntu/workspace/compile/out/.config && make mrproper O=/home/ubuntu/workspace/compile/ && make -j4 bzImage O=/home/ubuntu/workspace/compile/out//out"

alias rd='sudo /var/lib/jenkins/workspace/test_scripts/start_qemu.sh stable'
alias rdn='sudo /var/lib/jenkins/workspace/test_scripts/start_qemu.sh next'
alias rdd='sudo /var/lib/jenkins/workspace/test_scripts/start_qemu.sh debug'
alias run_dpdk='sudo /var/lib/jenkins/workspace/test_scripts/start_qemu.sh dpdk'


alias rd_old='sudo qemu-system-x86_64 /home/ubuntu/myspace/qemu_build/stable_ubuntu.img -smp 4 -m 2048 --enable-kvm -net nic -net user,hostfwd=tcp::2222-:22 --nographic'
alias ssh_vm='ssh -v rlk@127.0.0.1 -p 2222'

alias lls="ls"
alias lsl="ls"


alias nigix_run=" sudo \
docker run \
-p 80:80 -p 8081:8081 \
--name my_nginx \
-d nginx \
"

alias start_nginx="sudo docker start 4997201fc368"
alias start_jenkins="sudo docker start 2a8ca2adbedc"
alias start_gerrit="sudo docker start 08c9f29c3800"

alias stop_nginx="sudo docker stop 4997201fc368"
alias stop_jenkins="sudo docker stop 2a8ca2adbedc"
alias stop_gerrit="sudo docker stop 08c9f29c3800"
alias asdf="ssh 0 -p2222"

alias start_ltp="sudo touch /var/lib/jenkins/need_ltp"
alias stop_ltp="sudo rm /var/lib/jenkins/need_ltp"
alias rq="sudo bash /var/lib/jenkins/workspace/test_scripts/start_qemu.sh stable"
alias rqn="sudo bash /var/lib/jenkins/workspace/test_scripts/start_qemu.sh next"
alias debugcrash="sudo crash /home/ubuntu/workspace/vmcore /home/ubuntu/workspace/vmlinux"
alias rltp="start_ltp && rq && stop_ltp"
alias myftpget="sudo busybox ftpget -v -u jenkins -p 1234hjkl@ 49.235.41.28 "
alias myftpput="sudo busybox ftpput -v -u jenkins -p 1234hjkl@ 49.235.41.28 "
alias fw1="bash /home/ubuntu/workspace/jenkins_workspace/test_scripts/find_warnings.sh 1"
alias fw2="bash /home/ubuntu/workspace/jenkins_workspace/test_scripts/find_warnings.sh 2"
alias fw3="bash /home/ubuntu/workspace/jenkins_workspace/test_scripts/find_warnings.sh 3"
alias fw="fw1"
alias his="history"
alias cSu="sudo nmcli connection up Su"
alias cOLD="sudo nmcli connection up ChinaNet-5mrv"

cd ~/workspace/
export LKP_SRC=/home/ubuntu/workspace/lkp-tests
export PATH=$PATH:$LKP_SRC/sbin:$LKP_SRC/bin
export LKP_SRC=/home/ubuntu/workspace/lkp-tests
export PATH=$PATH:$LKP_SRC/sbin:$LKP_SRC/bin
export LKP_SRC=/home/ubuntu/workspace/lkp-tests
export PATH=$PATH:$LKP_SRC/sbin:$LKP_SRC/bin
export LKP_SRC=/home/ubuntu/workspace/lkp-tests
export PATH=$PATH:$LKP_SRC/sbin:$LKP_SRC/bin
export LKP_SRC=/home/ubuntu/workspace/lkp-tests
export PATH=$PATH:$LKP_SRC/sbin:$LKP_SRC/bin
export LKP_SRC=/home/ubuntu/workspace/lkp-tests
export PATH=$PATH:$LKP_SRC/sbin:$LKP_SRC/bin
