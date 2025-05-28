echo "installing..."

sudo pacman -S --noconfirm --needed wireplumber pulseaudio pavucontrol kitty nvim dunst picom rofi pulseaudio-bluetooth bluez bluez-utils blueman flameshot feh ranger vlc nwg-look fzf htop ntfs-3g xclip zsh ttf-font-awesome ttf-hack-nerd ttf-jetbrains-mono-nerd ttf-roboto-mono-nerd tumbler npm gvfs thunar thunar-archive-plugin polkit-kde-agent xarchiver ripgrep pamixer
yay -S --noconfirm --needed sct everforest-gtk-theme-git everforest-icon-theme-git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/vinceliuice/Graphite-gtk-theme.git ~/ && cd ~/Graphite-gtk-theme && ./install.sh

