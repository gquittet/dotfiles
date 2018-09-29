#/bin/bash

maildir="$HOME/.mails/*/*"
maildirnew="$maildir/new/"
maildirold="$maildir/cur/"

icon="/usr/share/icons/Papirus-Dark/64x64/apps/evolution-mail.svg"
appname="neomutt"

offlineimap -o -u quiet

new=$(find $maildirnew -type f | wc -l)
old=$(find $maildirold -type f | wc -l)

if [ $new -gt 0 ]
then
    title="$new new email!"
    content="Read them as soon as possible!"
    notify-send -i "$icon" -a "$appname" "$title" "$content"
fi
