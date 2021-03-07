sudo apt update && sudo apt -y upgrade ;
# パッケージ一覧アップデート & パッケージアップデート

if !(type vim > /dev/null 2>&1) ; then
sudo apt -y install vim
fi
# テキストエディタ
if !(type curl > /dev/null 2>&1) ; then
sudo apt -y install  curl 
fi
# httpリクエスト
if !(type screen > /dev/null 2>&1) ; then
sudo apt -y install screen 
fi
# 画面分割
if !(type dconf-editor > /dev/null 2>&1) ; then
sudo apt -y install dconf-editor 
fi
# dock透明度やら
if !(type gnome-tweaks > /dev/null 2>&1) ; then
sudo apt -y install gnome-tweaks
fi
# デスクトップカスタマイズ
if !(type chrome-gnome-shell > /dev/null 2>&1) ; then
sudo apt -y install chrome-gnome-shell
fi
# デスクトップカスタマイズ
if !(type java > /dev/null 2>&1) ; then
sudo apt -y install openjdk-14-jdk
fi 

sudo timedatectl set-local-rtc true ;
# win10 9時間ずらす

dconf write /org/gnome/shell/extensions/panel-date-format/format "'%Y年%m月%d日\(%a\) %H時%M分%S秒'" ;
# gnome時間系

gsettings set org.gnome.desktop.interface show-battery-percentage true ;
# バッテリー残量%表示

gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false ;
# dockの長さ変更

LANG=C xdg-user-dirs-gtk-update ;
# ホーム内英語化

sudo sed -i -e "s|<layout>default</layout>|<layout>jp</layout>|" /usr/share/ibus/component/mozc.xml ;
# mozcを日本語配列に変更


