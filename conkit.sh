#! /bin/bash

if [ -L "$0" ]; then
    fn=$(readlink $0)
    cd "$(dirname "$fn")"
else
    cd "$(dirname "$0")"
fi

if [ $# -ne 1 ]; then
    echo 1>&2 Usage: $(basename $0) theme_name
    exit 1
fi

if [ ! -d "./themes/$1" ]; then
    echo 1>&2 Theme $1 does not exist
    exit 1
fi

killall conky

./themes/$1/conky_start.sh

# Setting autostart
cat > ~/.config/autostart/conkit.desktop << EOF
[Desktop Entry]
Name[en_US]=conkit
Comment[en_US]=$1
Exec=$(pwd)/themes/$1/conky_start.sh
Type=Application
X-GNOME-Autostart-enabled=true
EOF
