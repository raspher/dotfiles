# test for an existing bus daemon, just to be safe
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
  # if not found, launch a new one
  eval `dbus-launch --sh-syntax --exit-with-session`
  echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
fi

# Load .Xresources
xrdb ~/.Xresources

# Gnome-keyring-daemon
#gnome-keyring-daemon -s --components=pkcs11,secrets,ssh &

# Start notification-daemon
#/usr/lib/notification-daemon-1.0/notification-daemon &

# Start ibus
ibus-daemon --xim -d &

# xcompmgr for transparency
xcompmgr -c -C &
# replace with compton, uses config in ~/.config/compton.conf
#compton -b

# Set keymap to swedish
setxkbmap pl

# Cursor
xsetroot -cursor_name left_ptr

# run xbindkeys for audiokeys functionality if not in awesome
# xbindkeys &

# Load Window Manager
#DEFAULT_SESSION=awesome
exec dbus-launch awesome
