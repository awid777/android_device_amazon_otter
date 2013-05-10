#!/system/bin/sh

SWAPFILE=/cache/swapfile.swp
SWAPSIZE=64

if bbx [ ! -f "$SWAPFILE" ]; then
	bbx dd if=/dev/zero of=$SWAPFILE bs=1048576 count=$SWAPSIZE
	bbx chmod 600 $SWAPFILE
	bbx mkswap $SWAPFILE
fi
swapon $SWAPFILE

