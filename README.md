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
git clone [https://github.com/salimrama/setup-hyprland.git](https://github.com/salimrama/setup-hyprland.git)
cd setup-hyprland
```

2. Berikan izin eksekusi pada script:
```bash
chmod +x setup-hyprland.sh
```

3. Jalankan script (script akan otomatis meminta akses sudo jika diperlukan):
```bash
./setup-hyprland.sh
```

4. Setelah instalasi selesai, *reboot* (mulai ulang) sistem kamu:
```bash
reboot
```

## 📝 Catatan Penting

- Proses instalasi (khususnya *setup* dari Illogical Impulse) mungkin akan memakan waktu tergantung pada kecepatan internet, karena script akan mengunduh banyak paket tambahan dari AUR.
- Jangan menjalankan script ini langsung menggunakan perintah `sudo ./setup-hyprland.sh`. Jalankan sebagai *user* biasa, sistem akan memintamu memasukkan *password root* saat mengeksekusi instalasi paket.

## ✨ Kredit & Apresiasi

Script ini menggunakan karya luar biasa dari komunitas *open-source*. Terima kasih kepada para pembuatnya:
* **[Darkkal44](https://github.com/Darkkal44/qylock)** untuk tema SDDM `qylock`.
* **[end-4](https://github.com/end-4/dots-hyprland)** untuk dotfiles Hyprland *Illogical Impulse* yang sangat cantik.
* **[pctrade](https://github.com/pctrade/end4-pC)** untuk konfigurasi Quickshell tambahan.

---
**Dikelola oleh:** Salim Ramadhan
