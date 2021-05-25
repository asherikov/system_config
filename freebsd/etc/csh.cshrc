set autolist
set color
set listflags = A
set visiblebell
set prompt = `whoami`" %T %?%# "
set noding
set nobeep
set globdot
set globstar
set implicitcd
#set complete=igncase

# CTRL + arrows
bindkey "^[[1;5D" beginning-of-line
bindkey "^[[1;5C" end-of-line

alias ls ls -AFG
alias gmake gmake -j5
alias cp cp -v
alias mv mv -v
alias svn svnlite

setenv LC_TIME POSIX
setenv LC_MESSAGES POSIX
setenv LC_COLLATE C

setenv LESS    -i
setenv LSCOLORS gxfxcxdxbxegedabagacad
setenv LESSHISTFILE /dev/null

setenv GCC_COLORS "error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01"
