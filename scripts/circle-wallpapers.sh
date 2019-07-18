#!/bin/sh
cd ~/imagens/wallpaper/

CURRENT_WALLPAPER=$(cat ~/scripts/circle-wallpapers/current-wallpaper)

if [ -z $CURRENT_WALLPAPER ]; then
	CURRENT_WALLPAPER=$(ls | head -n 1)
fi

if [ $CURRENT_WALLPAPER = $(ls | tail -n 1) ]; then
	CURRENT_WALLPAPER=$(ls | head -n 1)
fi

SHOULD_GET_NEXT="false"
for filename in *; do 
	
	if [ "$SHOULD_GET_NEXT" = "true" ]; then
		echo "Changing wallpaper to: $filename"
		CURRENT_WALLPAPER=$filename
		SHOULD_GET_NEXT="false"
		break
	fi
	
	if [ "$filename" = "$CURRENT_WALLPAPER" ]; then
		SHOULD_GET_NEXT="true"
	fi

done

echo $CURRENT_WALLPAPER > ~/scripts/circle-wallpapers/current-wallpaper
feh --bg-fill $CURRENT_WALLPAPER
