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
sudo apt install feh neovim xclip make automake
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

Untuk  launcher, saya menggunakan *dmenu*.
Di Ubuntu 18.04, diperlukan 2 dependencies agar *dmenu* dapat diinstall.

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
