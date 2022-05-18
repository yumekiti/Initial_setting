sudo apt update && sudo apt -y upgrade ;
# パッケージ一覧アップデート & パッケージアップデート

if !(type vim > /dev/null 2>&1) ; then
sudo apt -y install vim ;
fi
# テキストエディタ

if !(type curl > /dev/null 2>&1) ; then
sudo apt -y install  curl ;
fi
# httpリクエスト

if !(type screen > /dev/null 2>&1) ; then
sudo apt -y install screen ;
fi
# 画面分割

if !(type dconf-editor > /dev/null 2>&1) ; then
sudo apt -y install dconf-editor ;
fi
# dock透明度やら

if !(type gnome-tweaks > /dev/null 2>&1) ; then
sudo apt -y install gnome-tweaks ;
fi
# デスクトップカスタマイズ

if !(type chrome-gnome-shell > /dev/null 2>&1) ; then
sudo apt -y install chrome-gnome-shell ;
fi
# デスクトップカスタマイズ

# sudo timedatectl set-local-rtc true ;
# win10 9時間ずらす

gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true ;
# Dock にゴミ箱を表示する

gsettings set org.gnome.shell.extensions.desktop-icons show-trash false ;
# desktop にゴミ箱を非表示する

gsettings set org.gnome.shell.extensions.desktop-icons show-home false ;
# desktop にhomeを非表示する

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

sudo apt -y remove aisleriot ;
sudo apt -y remove gnome-mines ;
sudo apt -y remove gnome-mahjongg ;
sudo apt -y remove gnome-sudoku ;
# 要らないソフトの削除

curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o vscode.deb ;
sudo apt install -y ./vscode.deb ;
# vscode install

curl -L https://dl.discordapp.net/apps/linux/0.0.14/discord-0.0.14.deb -o discode.deb ;
sudo apt install -y ./discode.deb ;
# discode

wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor > packages.google.gpg ;
sudo install -o root -g root -m 644 packages.google.gpg /etc/apt/trusted.gpg.d/ ;
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.google.gpg] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' ;

sudo apt-get install apt-transport-https ;
sudo apt-get update ;
sudo apt-get install -y google-chrome-stable ;
# chrome

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# vim-plug

if !(type neovim > /dev/null 2>&1) ; then
sudo apt -y install neovim ;
fi
# nvim

curl -sL install-node.vercel.app/lts | bash
# coc.nvim