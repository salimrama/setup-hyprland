# Arch Linux Hyprland Auto-Setup

Script Bash untuk mengotomatisasi instalasi dan konfigurasi lingkungan desktop **Hyprland** di Arch Linux atau CachyOS. Script ini dirancang agar kamu bisa dengan cepat mengatur sistem dengan tampilan yang estetik dan fungsional dalam satu kali eksekusi.

## 📦 Apa saja yang diinstal?

Script ini akan secara otomatis melakukan langkah-langkah berikut:
1. Memperbarui sistem secara penuh (`pacman -Syu`).
2. Menginstal **Hyprland** dan dependensi dasarnya.
3. Menginstal dan mengaktifkan **SDDM** sebagai *Display Manager*.
4. Menginstal dan menerapkan tema SDDM **[qylock](https://github.com/Darkkal44/qylock)**.
5. Menginstal ekosistem dotfiles **[Illogical Impulse (dots-hyprland)](https://github.com/end-4/dots-hyprland)**.
6. Menginstal konfigurasi Quickshell **[end4-pC](https://github.com/pctrade/end4-pC)** dan otomatis memperbarui file konfigurasi `variables.lua`.

## 🚀 Cara Penggunaan

**Peringatan:** Pastikan kamu menjalankan script ini di Arch Linux atau turunannya yang baru diinstal, atau pada sistem yang belum memiliki konfigurasi Hyprland/SDDM kustom yang tumpang tindih.

1. Buka terminal dan *clone* repositori ini:
   ```bash
   git clone [https://github.com/USERNAME_GITHUB_KAMU/NAMA_REPOSITORI.git](https://github.com/USERNAME_GITHUB_KAMU/NAMA_REPOSITORI.git)
   cd NAMA_REPOSITORI
