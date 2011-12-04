# Update system first.
sudo pacman -Syu

# zsh
sudo pacman -S zsh
chsh -s /bin/zsh

# Dev stuff
sudo pacman -S inetutils
sudo pacman -S ruby
sudo pacman -S vim
sudo pacman -Sy --noconfirm gcc patch curl zlib readline libxml2 libxslt git autoconf diffutils make libtool bison subversion gtkmm3
sudo pacman -S erlang
sudo pacman -S ctags
sudo pacman -S sqlite3
sudo pacman -S ack
sudo pacman -S qt #for capybara-webkit
sudo pacman -S inetutils

# RVM
bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )
rvm install 1.9.2
rvm use 1.9.2 --default

# Redis
sudo pacman -S redis
cat "Please add @redis to DEAMONS in /etc/rc.conf"

# Mysql
sudo pacman -S mysql
sudo /etc/rc.d/mysqld start && sudo mysql_secure_installation
sudo /etc/rc.d/mysqld restart
cat "Please add @mysqld to DEAMONS in /etc/rc.conf"

# Desktop setup helpers
sudo pacman -S chromium
sudo pacman -S firefox
sudo pacman -S gnome-tweak-tool
sudo pacman -S archlinux-wallpaper
sudo pacman -S archlinux-artwork
sudo pacman -S flashplugin
sudo pacman -S empathy
sudo pacman -S telepathy-gabble
sudo pacman -S ttf-droid ttf-ubuntu-font-family
sudo pacman -S terminator
sudo pacman -S gedit
sudo pacman -S gnome-system-monitor

# Smaller title bars
sudo sed -i '/title_vertical_pad/s|value="[0-9]\{1,2\}"|value="0"|g' /usr/share/themes/Adwaita/metacity-1/metacity-theme-3.xml
