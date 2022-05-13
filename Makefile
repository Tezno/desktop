install-gnome-extensions:
	cp -r gnome-extensions/extensions ~/.local/share/gnome-shell/

install-gnome-themes:
	gnome-themes/themes/Orchis-themes/./install.sh

install-zshrc:
	cp .zshrc ~/
