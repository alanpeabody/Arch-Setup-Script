# Assumes Gnome is setup per Arch Wiki

# Update system first.
sudo pacman -Syu

# zsh
sudo pacman -S zsh
chsh -s /bin/zsh

# Dev stuff
sudo pacman -Sy --noconfirm gcc patch curl zlib readline libxml2 libxslt git autoconf diffutils make libtool bison subversion gtkmm3 inetutils ruby erlang ctags ack autocutsel clojure rlwrap

# Gvim installs vim with ruby and xterm_clipboard support
sudo pacman -Sy --noconfirm gvim

# RVM
#bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )
#rvm install 1.9.2
#rvm use 1.9.2 --default

# Redis
sudo pacman -Sy --noconfirm redis
cat "Please add @redis to DEAMONS in /etc/rc.conf"

# RDBMS
sudo pacman -Sy --noconfirm sqlite3 mysql
sudo /etc/rc.d/mysqld start && sudo mysql_secure_installation
sudo /etc/rc.d/mysqld restart
cat "Please add @mysqld to DEAMONS in /etc/rc.conf"

# Desktop setup helpers
sudo pacman -Sy --noconfirm chromium firefox gnome-tweak-tool archlinux-wallpaper archlinux-artwork flashplugin empathy telepathy-gabble ttf-droid ttf-ubuntu-font-family terminator gedit gnome-system-monitor

# Smaller title bars
sudo sed -i '/title_vertical_pad/s|value="[0-9]\{1,2\}"|value="0"|g' /usr/share/themes/Adwaita/metacity-1/metacity-theme-3.xml
