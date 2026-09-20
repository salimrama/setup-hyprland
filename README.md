# Arch Linux Hyprland Auto-Setup

Bash script untuk *auto-install* dan *setup desktop environment* **Hyprland** di Arch Linux atau CachyOS. Script ini dibikin biar kalian bisa nge-*deploy* sistem dengan *look* yang estetik dan fungsional cuma dengan sekali *run*.

## 📦 What's Inside?

Script ini bakal otomatis ngeksekusi *workflow* berikut:
1. *Full system update* (`pacman -Syu`).
2. Install **Hyprland** beserta *core dependencies*-nya.
3. Install dan *enable service* **SDDM** sebagai *Display Manager*.
4. *Clone* dan *apply* SDDM theme **[qylock](https://github.com/Darkkal44/qylock)**.
5. Install *dotfiles ecosystem* **[Illogical Impulse (dots-hyprland)](https://github.com/end-4/dots-hyprland)**.
6. *Clone* config Quickshell **[end4-pC](https://github.com/pctrade/end4-pC)** dan otomatis nge-*update/inject* parameter di file config `variables.lua`.

## 🚀 How to Usage

**Warning:** Pastikan kalian nge-*run* script ini di *fresh install* Arch Linux (atau turunannya), biar nggak *conflict* sama custom config Hyprland/SDDM yang udah ada di lokal kalian.

1. Buka terminal lalu *clone* repo ini:
```bash
git clone [https://github.com/salimrama/setup-hyprland.git](https://github.com/salimrama/setup-hyprland.git)
cd setup-hyprland
```

2. *Set permission* biar script-nya *executable*:
```bash
chmod +x setup-hyprland.sh
```

3. *Execute* script-nya (script bakal nge-handle *sudo prompt* otomatis pas butuh *root access*):
```bash
./setup-hyprland.sh
```

4. Kalau proses instalasi udah *done*, tinggal *reboot* sistem:
```bash
reboot
```

## 📝 Notes

- Proses *build* dan instalasi (terutama waktu jalanin *setup script* Illogical Impulse) mungkin agak lama tergantung koneksi internet kalian, soalnya script bakal nge-*fetch* dan *compile* banyak *package* tambahan dari AUR.
- **JANGAN** nge-*run* script ini pakai *user root* atau langsung `sudo ./setup-hyprland.sh`. Cukup *run* sebagai *standard user*, script-nya udah di-handle biar nge-*prompt* password root pas eksekusi *package manager*.

## ✨ Credits & Shoutouts

Script ini di-*build* menggunakan *resource open-source* yang luar biasa. *Huge thanks to*:
* **[Darkkal44](https://github.com/Darkkal44/qylock)** untuk SDDM theme `qylock`.
* **[end-4](https://github.com/end-4/dots-hyprland)** untuk *god-tier dotfiles* Hyprland *Illogical Impulse*.
* **[pctrade](https://github.com/pctrade/end4-pC)** untuk *custom config* Quickshell.

---
**Maintained by:** Salim Ramadhan
