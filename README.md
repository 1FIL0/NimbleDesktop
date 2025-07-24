A clean and distraction free BSPWM rice. I've made this for personal use but feel free to use it.
There are 2 installers, one for laptops and one for desktops. This is done because I've included modules like battery for polybar.
Before installation, the scripts generate a backup folder with your previous configs in case you want to rollback.

**Installation:**

**1. Install dependencies:**
*Debian:  
```sudo apt install fonts-noto fonts-firacode fonts-font-awesome alacritty bspwm sxhkd rofi polybar picom flameshot feh```  
Fedora:  
```sudo dnf install google-noto-sans-fonts fira-code-fonts fontawesome5-fonts alacritty bspwm sxhkd rofi polybar picom flameshot feh```  
Arch:  
```sudo pacman -S noto-fonts fira-code ttf-font-awesome alacritty bspwm sxhkd rofi polybar picom flameshot feh```  

**2. Clone and install**
```
git clone https://github.com/1FIL0/NimbleDesktop.git
cd NimbleDesktop
./install_x.sh
```

Known Issues:
The wifi module might not appear because it is configured for a specific interface. To fix this, change the variable [module/wireless-network]/interface in ~/.local/share/polybar/themes/nimbledesktop/modules.ini to your specific interface.


