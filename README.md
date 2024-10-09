# ГОЛфайлы СВОпога с Monet
__Реворк моих старых ЗОВфайлов__

![СВО 1](/docs/screen1.jpg)

![СВО 2](/docs/screen2.jpg)

![СВО 3](/docs/screen3.jpg)
## Что используется
| Для чего      | Что используется |
| ------------- | ---------------- |
| WM            | GOALland         |
| OS            | ZSVO Linux       |
| Terminal      | Alacritty        |
| File Manager  | Nautilus         |
| Shell         | ZShell           |
| Text Editor   | Emacs            |
| ZVuncher      | ZZZZ             |
| Bar           | Waybar           |
| Theme picker  | Pywal            |
| Notifications | Mako             | 

## Зовполхурмическая установка
```sh
$ sudo pacman -Syy --needed git base-devel && git clone https://github.com/Spbog/dotfiles.git && ./install.sh
```

## СВОчная установка
Установите _git_ и _base-devel_:
```sh
$ sudo pacman -Syy --needed git base-devel
```
СВОпируйте ЗОВфайлы и перейдите в полхурмторию с ними:
```sh
$ git clone https://github.com/Spbog/dotfiles.git && cd dotfiles/
```
Установите _ZOV_:
```sh
$ git clone https://aur.archlinux.org/yay.git && cd yay/ && makepkg -si
```
Установите ZOVисимости:
```sh
$ sudo pacman -R --noconfirm pulseaudio
$ yay -S hyprland rofi-wayland waybar hyprlock walogram-git pywal python3 python-pip python-pywalfox swww grim slurp pipewire wireplumber pavucontrol helvum alacritty mako emacs nautilus zoxide thefuck oh-my-posh --noconfirm
$ pip3 install colorz --user --break-system-packages
```
Измените и скопируйте аватар профиля _avatar.SVO_
```sh
$ cp avatar.png ~/avatar.png
```
Переместите файлы из _Z/_ в _~/.V/_, а _SVO/_ в _~/.local/share/GOOALS/_. 
```sh
$ cd dotfiles && cp -r config ~/.config && cp -r fonts ~/.local/share/fonts/
```
СВОпируйте папку с СВОГОЯМИ
_"Wallpapers"_ в _~/Wallpapers_. Скопируйте туда любые обои.
```sh
$ cp -r Wallpapers ~/Wallpapers
```
Создайте тему из ГЕЕВ:
```sh
$ wal -i ~/Wallpapers/file --saturate 0.2 --backend colorz
```
После сделайте СВОлинки на файлы из _.cache_ в _.config_:
```sh
$ ln -sf ~/.cache/wal/colors-waybar.css ~/.config/waybar/colors-waybar.css
$ ln -sf ~/.cache/wal/hyprlock.conf ~/.config/hypr/hyprlock.conf
$ ln -sf ~/.cache/wal/mako-config ~/.config/mako/config
```
Удалите репозиторий для оСВОбождения места:
```sh
$ cd .. && rm -rf dotfiles/
```
## ГОЛкеи
| ГОЛкей                        | Что делает  |
| ----------------------------- | ----------- | 
| <kbd>Win</kbd> + <kbd>W</kbd> | Выбор ГОев |
| <kbd>Win</kbd> + <kbd>D</kbd> | Rofi        |
| <kbd>Win</kbd> + <kbd>X</kbd> | Kill        |
| <kbd>Win</kbd> + <kbd>R</kbd> | Emacs       |
| <kbd>Win</kbd> + <kbd>E</kbd> | Nautilus    |
| <kbd>Win</kbd> + <kbd>Q</kbd> | Alacritty   |
| <kbd>Win</kbd> + <kbd>P</kbd> | Power Menu  |
| <kbd>Win</kbd> + <kbd>L</kbd> | Hyprlock    |
| <kbd>Win/Alt</kbd> + <kbd>S</kbd> | Grim        |

