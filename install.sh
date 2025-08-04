sudo pacman -Syu
sudo pacman -S --needed --noconfirm \
xorg-server \
xorg-xinit \
xorg-xrandr \
xorg-xsetroot \
i3-wm \
picom \
feh \
dunst \
alacritty \
rofi \
polybar \
neovim \
fastfetch \
cava \
noto-fonts \
papirus-icon-theme

mkdir -p ~/.config/i3
cp .config/i3/config ~/.config/i3/
cp .config/i3/wallpaper ~/.config/i3/
mkdir -p ~/.config/picom
cp .config/picom/picom.conf ~/.config/picom/
mkdir -p ~/.config/rofi
cp .config/rofi/config.rasi ~/.config/rofi/
mkdir -p ~/.config/cava
cp .config/cava/config ~/.config/cava/
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git

read -p "Reboot now. (y/N): " choice
case $choice in
    y|Y)
        sudo reboot
        ;;
    more)
        echo "Continue for optional setup"
        ;;
    *)
        exit 0
        ;;
esac

sudo pacman -S --needed --noconfirm \
git \
flatpak \
pipewire \
noto-fonts-cjk \
mesa \
lib32-mesa
vulkan-radeon \
lib32-vulkan-radeon
libva-mesa-driver \
mesa-vdpau \
ffmpeg

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

sudo pacman -S --needed --noconfirm\
discord \
jdk8-openjdk \
jdk17-openjdk \
jdk21-openjdk \
prismlauncher \
steam \
proton-vpn-gtk-app \
keepassxc \
thunar \
thunar-archive-plugin

yay -S --needed --noconfirm \
brave-bin \
visual-studio-code-bin \
localsend-bin

flatpak install -y --noninteractive flathub \
io.mrarm.mcpelauncher \
org.vinegarhq.Sober



