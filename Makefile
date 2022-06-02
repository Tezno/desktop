install-gnome-extensions:
	cp -r gnome_extensions/extensions ~/.local/share/gnome-shell/

install-gnome-themes:
	gnome_themes/themes/Orchis-theme/./install.sh

install-p10k:
	cp .p10k.zsh ~/

install-zshrc:
	cp .zshrc ~/

install-cursor:
	cp -r cursors/* /usr/share/icons
