# Pengaturan Desktop

*Shoutout to Luke Smith for inspiring me to do this thing.*

14 Desember 2018

+ `Ubuntu LTS 18.04 MATE` Sistem Operasi.
+ `i3-gaps` Window Manager.
+ `st` untuk terminal.
+ `neofetch` untuk pamer
+ `dmenu` untuk launcher
+ `feh` untuk background and picture
+ `Neovim` Text Editor
+ `scrot` dan `xclip` Screenshot
+ `light` untuk pengaturan kecerahan
+ `playerctl` Multimedia keys dengan VLC

Beberapa paket dapat langsung di install

```{bash}
sudo apt install feh xclip make automake zathura mpv mpd
```

## i3-gaps

Untuk install `i3-gaps` dapat mengikuti [AirBlader](https://github.com/Airblader/i3/wiki/Compiling-&-Installing).

## i3-blocks

i3-blocks yang digunakan adalah yang juga mengikuti [AirBlader](https://github.com/Airblader/i3blocks-gaps).

## light
Ikuti [haikaren github.io](http://haikarainen.github.io/light/) atau ikuti script di bawah.

```{bash}
git clone https://github.com/haikarainen/light.git
cd light
./autogen.sh
./configure && make
sudo make install
```

## playerctl
kunjungi [playerctl github pages](https://github.com/acrisci/playerctl).

## Launcher

Untuk launcher program layaknya *start menu* di Windows, saya menggunakan *dmenu*.
Program ini dapat digunakan untuk hal lain selain menjadi Launcher.
Di Ubuntu 18.04, saya menggunakan *dmenu* yang berasal dari GitHub Luke Smith. Diperlukan 2 dependencies agar *dmenu* dapat diinstall.

```{bash}
sudo apt install libx11-dev libxinerama-dev

https://github.com/LukeSmithxyz/dmenu.git dmenu
cd dmenu
make
sudo make install
```

## Terminal

Untuk terminal, saya menggunakan *simple terminal.*

```
git clone https://github.com/LukeSmithxyz/st.git st
cd st
make
sudo make install
```

## Text Editor

Text-Editor yang digunakan adalah Neovim.

```{bash}
sudo apt install neovim
```

### vim-plug

Untuk memperkaya kemampuan Neovim, `vim-plug` dipilih. `vim-plug` akan membantu
memasang plugin-plugin.

```{bash}
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Analisis Statistik

Untuk Analisis Statistik, bahasa pemrogramnan R digunakan. Kunjungi
[r-project](https://repo.bppt.go.id/cran/) untuk panduan mendownload.

Setelah itu, beberapa paket R perlu diinstall.
`tidyverse` digunakan untuk melakukan analisis.
`openxlsx` digunakan untuk mengekspor data ke ekstensi .xslx
`tinytex` digunakan untuk menulis TeX.

Sebelum menginstall paket tersebut, beberapa paket untuk distro perlu
diinstall.


```{bash}
sudo apt install libcurl4-openssl-dev libssl-dev libxml2-dev
```

Sekarang, paket R dapat diinstal.

```{r}
install.packages(c("tidyverse", "openxlsx", "tinytex")
```

