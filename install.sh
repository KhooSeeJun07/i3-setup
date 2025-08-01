sudo pacman -Syu
sudo pacman -S --needed git flatpak
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

sudo pacman -S --needed \
xorg-server \
xorg-xinit \
xorg-xrandr \
xorg-xsetroot \
i3-wm \
picom \
alacritty \
rofi \
polybar \
neovim \
fastfetch \
cava

mkdir -p ~/.config/i3
cp .config/i3/config ~/.config/i3/
cp .config/i3/wallpaper ~/.config/i3/
mkdir -p ~/.config/picom
cp .config/picom/picom.conf ~/.config/picom/
mkdir -p ~/.config/rofi
cp .config/rofi/config.rasi ~/.config/rofi/
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git
mkdir -p ~/.config/cava
cp .config/cava/config ~/.config/cava/

ask_reboot() {
    read -p "Reboot now? (y/N): " choice
    case "$choice" in
        y|Y|yes|YES )
            echo "Rebooting..."
            sudo reboot
            ;;
        * )
            echo "Continuing without reboot."
            # Place your post-continuation commands here
            ;;
    esac
}

ask_reboot