userresources=$home/.xresources

if [ -f "$userresources" ]; then
	xrdb -merge "$userresources"
fi

xwallpaper --stretch ~/Downloads/patrick-ryan-3kUIaB2EPp8-unsplash.jpg
dwmblocks &
exec dwm 2> ~/.dwm.log
