echo "installing..."

sudo pacman -S --noconfirm wireplumber pulseaudio pavucontrol kitty nvim dunst picom rofi pulseaudio-bluetooth bluez bluez-utils blueman flameshot feh ranger vlc nwg-look fzf htop ntfs-3g xclip wine zsh ttf-font-awesome ttf-hack-nerd ttf-jetbrains-mono-nerd ttf-roboto-mono-nerd tumbler npm gvfs thunar thunar-archive-plugin polkit-kde-agent xarchiver wine ripgrep zsh
yay -S --noconfirm moc-pulse mocp-themes-git sct everforest-gtk-theme-git everforest-icon-theme-git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

