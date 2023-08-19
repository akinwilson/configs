# Makefile for creating symlinks to make vim or neovim work, irrespective of config locations

pwd := $(shell pwd -LP)

link:
	@if [ ! . -ef ~/.vim ]; then ln -nfs "${pwd}" ~/.vim; fi
	@if [ ! . -ef ~/config/nvim ]; then ln -nfs "${pwd}" ~/.config/nvim; fi
	@ln -nfs "${pwd}/init.vim" ~/.vimrc

