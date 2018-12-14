# Pengaturan Desktop

12 Maret 2018

* `Ubuntu LTS 16.04` Sistem Operasi.
+ `Unity / Gnome` Desktop Environment.
+ `i3-gaps` Window Manager.
* `i3lock` dan `i3blocks` Pengunci layar dan taskbar
* `urxvt` untuk terminal.
* `neofetch` untuk fetching
* `rofi` program launcher
* `mocp` Music Player
* `feh` for Background and picture
* `vim` Text Editor
* `scrot` dan `xclip` Screenshot
* `xbacklight` dan `light` untuk pengaturan kecerahan
* `playerctl` Multimedia keys dengan VLC

Beberapa paket dapat langsung di install
`sudo apt install urxvt rofi mocp feh vim scrot pactl xclip`

## i3-gaps

1. Install `i3lock` dan `i3blocks`. Ubuntu secara otomatis menginstall `i3-wm`.
2. Hapus `i3-wm` lalu install `i3-gaps`.

Dependecies: `libtool`
`sudo apt install i3blocks i3lock libtool && sudo apt remove i3-wm`.

Untuk install `i3-gaps` dapat mengikuti [AirBlader](https://github.com/Airblader/i3/wiki/Compiling-&-Installing).

## light
Ikuti [cialu.net](https://cialu.net/brightness-control-not-work-i3wm/) atau ikuti di bawah ini

```{bash}
git clone https://github.com/haikarainen/light.git
cd light
sudo make
sudo make install
```

## Neofetch

```
sudo add-apt-repository ppa:dawidd0811/neofetch
sudo apt update && sudo apt install neofetch
```

## playerctl
kunjungi [playerctl github pages](https://github.com/acrisci/playerctl).

## rofi
Untuk 16.04 diperlukan ppa agar sampai rofi 1.5

```{bash}
sudo add-apt-repository ppa:jasonpleau/rofi
sudo apt-get update
```
