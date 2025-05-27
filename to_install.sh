echo "Linking..."

rm -rf ~/dwm
ln -sf ~/dotfiles2/dwm ~/
cd ~/dwm/ && sudo make install

rm -rf ~/.config/kitty
ln -sf ~/dotfiles2/kitty ~/.config/

rm -rf ~/.config/dunst
ln -sf ~/dotfiles2/dunst ~/.config/

rm -rf ~/.config/nvim
ln -sf ~/dotfiles2/nvim ~/.config/

rm -rf ~/.config/picom
ln -sf ~/dotfiles2/picom ~/.config/

rm -rf ~/.config/rofi
ln -sf ~/dotfiles2/rofi ~/.config/

rm -rf ~/.config/slstatus
ln -sf ~/dotfiles2/slstatus ~/.config/
cd ~/.config/slstatus && sudo make install

rm -rf ~/.config/wallpapers
ln -sf ~/dotfiles2/wallpapers ~/.config/

rm -rf ~/.xinitrc
ln -sf ~/dotfiles2/.xinitrc ~/

rm -rf ~/.bashrc
ln -sf ~/dotfiles2/.bashrc ~/

rm -rf ~/zsh
ln -sf ~/dotfiles2/zsh ~/

