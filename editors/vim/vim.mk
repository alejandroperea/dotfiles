VIM := $(shell command -v vim 2>/dev/null)

ifdef VIM
	INSTALLERS += vim
	CLEANERS   += clean_vim

	VIM_SRC_DIR  := $(DOTFILES)/editors/vim
	VIM_DST_DIR  := $(DST_DIR)/.vim
	VIMRC        := $(DST_DIR)/.vimrc
	VIM_PLUG_URL := https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	VIM_PLUG     := $(VIM_DST_DIR)/autoload/plug.vim

  .PHONY: vim clean_vim

  $(VIMRC):
		$(LINK) $(VIM_SRC_DIR)/vimrc $@
  $(VIM_PLUG): $(VIM_DST_DIR)
		curl -fLo $@ $(VIM_PLUG_URL)
		vim +PlugInstall +qa
  $(VIM_DST_DIR):
		$(LINK) $(VIM_SRC_DIR) $@

  vim: dotfile_install_vim $(VIMRC) $(VIM_PLUG)
  clean_vim: dotfile_clean_vim
		$(RM) $(VIM_PLUG)
		$(RM) $(VIM_DST_DIR)
		$(RM) $(VIMRC)
else
	@echo "Vim is not installed"
endif
