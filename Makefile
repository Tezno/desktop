install-gnome-extensions:
	cp -r gnome-extensions/extensions ~/.local/share/gnome-shell/

install-gnome-themes:
	gnome-themes/themes/Orchis-themes/./install.sh

install-p10k:
	cp .p10k.zsh ~/

install-zshrc:
	cp .zshrc ~/

install-cursor:
	cp -r cursors/* /usr/share/icons
