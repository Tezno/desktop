install-zsh:
	sudo apt install zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

install-zsh-theme:
	sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

install-zsh-plugins:
	echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-autosuggestions.list
	curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-autosuggestions/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-autosuggestions.gpg > /dev/null
	sudo apt update
	sudo apt install zsh-autosuggestions zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

install-gnome-extensions:
	cp -r gnome_extensions/extensions ~/.local/share/gnome-shell/

install-gnome-themes:
	cd gnome_themes/themes
	git clone git@github.com:vinceliuice/Orchis-theme.git
	Orchis-theme/./install.sh

install-p10k:
	cp .p10k.zsh ~/

install-zshrc:
	cp .zshrc ~/

install-cursor:
	sudo cp -r cursors/* /usr/share/icons

install-icons:
	sudo sh -c "echo 'deb http://ppa.launchpad.net/papirus/papirus/ubuntu focal main' > /etc/apt/sources.list.d/papirus-ppa.list"
	sudo apt-get install dirmngr
	sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/papirus.gpg --keyserver keyserver.ubuntu.com --recv E58A9D36647CAE7F
	sudo chmod 644 /etc/apt/trusted.gpg.d/papirus.gpg
	sudo apt-get update
	sudo apt-get install papirus-icon-theme
