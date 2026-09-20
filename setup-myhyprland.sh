#!/usr/bin/env bash

# Menghentikan script jika ada perintah yang gagal (error)
set -e

echo "=== 1. Memperbarui Sistem & Menginstal Hyprland ==="
# Opsi --noconfirm digunakan agar instalasi tidak meminta konfirmasi (Y/n)
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm hyprland git base-devel

echo "=== 2. Menginstal & Mengaktifkan SDDM ==="
sudo pacman -S --needed --noconfirm sddm
sudo systemctl enable sddm

echo "=== 3. Menginstal Tema SDDM (qylock) ==="
# Kloning langsung ke folder tema SDDM
if [ ! -d "/usr/share/sddm/themes/qylock" ]; then
    sudo git clone https://github.com/Darkkal44/qylock.git /usr/share/sddm/themes/qylock
fi

# Menerapkan tema qylock sebagai tema default SDDM
sudo mkdir -p /etc/sddm.conf.d
echo -e "[Theme]\nCurrent=qylock" | sudo tee /etc/sddm.conf.d/theme.conf

echo "=== 4. Menginstal Illogical Impulse (end-4 dots-hyprland) ==="
mkdir -p ~/.cache
cd ~/.cache

# Hapus folder lama jika instalasi sebelumnya gagal/sudah ada, lalu clone ulang
if [ ! -d "dots-hyprland" ]; then
    git clone https://github.com/end-4/dots-hyprland
fi

cd dots-hyprland
# Menjalankan script setup bawaan end-4
./setup install

echo "=== 5. Menginstal end4-pC untuk Quickshell ==="
# Pastikan foldernya dibuat terlebih dahulu agar git clone tidak error
mkdir -p ~/.config/quickshell/
cd ~/.config/quickshell/

if [ ! -d "end4-pC" ]; then
    git clone https://github.com/pctrade/end4-pC.git
fi

# Matikan qs jika sedang berjalan (tambahkan || true agar script tidak berhenti jika qs belum jalan)
killall qs 2>/dev/null || true
# Jalankan qs di background
qs -c end4-pC > /dev/null 2>&1 & disown

echo "=== 6. Mengubah Konfigurasi di variables.lua ==="
VAR_FILE="$HOME/.config/hypr/hyprland/variables.lua"

# Mengecek apakah file variables.lua ada, lalu mengubah isinya menggunakan perintah 'sed'
if [ -f "$VAR_FILE" ]; then
    sed -i 's/hl.env("qsConfig", "ii")/hl.env("qsConfig", "end4-pC")/g' "$VAR_FILE"
    echo "Berhasil mengubah qsConfig menjadi end4-pC."
else
    echo "[WARNING] File $VAR_FILE tidak ditemukan. Pastikan instalasi dots-hyprland selesai dengan benar."
fi

echo "=========================================="
echo " Instalasi Selesai! Silakan reboot sistem. "
echo "=========================================="