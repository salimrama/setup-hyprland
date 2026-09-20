#!/usr/bin/env bash

set -e

echo "[+] Updating system & installing Hyprland core..."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm hyprland git base-devel

echo "[+] Setting up SDDM..."
sudo pacman -S --needed --noconfirm sddm
sudo systemctl enable sddm

echo "[+] Installing qylock SDDM theme..."
if [ ! -d "/usr/share/sddm/themes/qylock" ]; then
    sudo git clone https://github.com/Darkkal44/qylock.git /usr/share/sddm/themes/qylock
fi
sudo mkdir -p /etc/sddm.conf.d
echo -e "[Theme]\nCurrent=qylock" | sudo tee /etc/sddm.conf.d/theme.conf > /dev/null

echo "[+] Fetching Illogical Impulse (end-4 dots)..."
mkdir -p ~/.cache
cd ~/.cache
if [ ! -d "dots-hyprland" ]; then
    git clone https://github.com/end-4/dots-hyprland
fi
cd dots-hyprland
./setup install

echo "[+] Configuring end4-pC quickshell..."
mkdir -p ~/.config/quickshell/
cd ~/.config/quickshell/
if [ ! -d "end4-pC" ]; then
    git clone https://github.com/pctrade/end4-pC.git
fi
killall qs 2>/dev/null || true
qs -c end4-pC > /dev/null 2>&1 & disown

echo "[+] Patching variables.lua..."
VAR_FILE="$HOME/.config/hypr/hyprland/variables.lua"
if [ -f "$VAR_FILE" ]; then
    sed -i 's/hl.env("qsConfig", "ii")/hl.env("qsConfig", "end4-pC")/g' "$VAR_FILE"
    echo " -> qsConfig updated to end4-pC"
else
    echo "[!] WARN: $VAR_FILE not found. Check if dots-hyprland installed correctly."
fi

echo ""
echo "[✓] Setup complete! Please reboot your system."
