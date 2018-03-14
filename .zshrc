source /usr/local/share/antigen/antigen.zsh

# set env variables
export EDITOR=vim # TODO: utilize emacs power

# Anaconda installation
export PATH=/usr/local/anaconda3/bin:"$PATH"

# (Emacs) Cask installastion
export PATH="/Users/ffloyd/.cask/bin:$PATH"

# MacTeX installation
export PATH="/Library/TeX/texbin:$PATH"

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh)
antigen bundle git
antigen bundle battery
antigen bundle bgnotify
antigen bundle bundler
antigen bundle colored-man-pages
antigen bundle cp
antigen bundle docker
antigen bundle docker-compose
antigen bundle extract
antigen bundle mix-fast
antigen bundle osx
antigen bundle rake-fast
antigen bundle rbenv

# zsh-users stuff
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Bundles to adopt in future
# antigen bundle emacs

# Load the spaceship theme - a lot of useful indicators
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

# Tell antigen that you're done
antigen apply
