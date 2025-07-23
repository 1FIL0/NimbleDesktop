echo "Backing up current configs"
mkdir -p backup
cp -r ~/.config/alacritty backup 2>/dev/null
cp -r ~/.config/bspwm backup 2>/dev/null
cp -r ~/.config/sxhkd backup 2>/dev/null
cp -r ~/.config/rofi backup 2>/dev/null

echo "Installing Nimble Desktop"

echo "Checking and creating directories"
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/bspwm
mkdir -p ~/.config/sxhkd
mkdir -p ~/.config/rofi
mkdir -p ~/.local/share/rofi/themes/
mkdir -p ~/.local/share/polybar/themes/nimbledesktop

echo "Copying files"
cp rice/alacritty/* ~/.config/alacritty/
cp rice/bspwm/* ~/.config/bspwm/
cp rice/sxhkd/* ~/.config/sxhkd/
cp rice/rofi/config.rasi ~/.config/rofi/
cp rice/rofi/nimbledesktop.rasi ~/.local/share/rofi/themes/
cp rice/polybar/* ~/.local/share/polybar/themes/nimbledesktop/

echo "Setting files as executable"
chmod u+x ~/.config/bspwm/bspwmrc
chmod u+x ~/.config/bspwm/autostart.sh
chmod u+x ~/.config/sxhkd/sxhkdrc
chmod u+x ~/.local/share/polybar/themes/nimbledesktop/launch.sh

echo "Done! Reload bspwm if needed. Previous configs have been backed up in this directory"
