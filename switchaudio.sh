#!/usr/bin/zsh
# This script uses dunstify notification to notify the user of the current profile.
#Identify your headphones and speaker sinks and add them to the script

CURRENT_PROFILE=$(pactl get-default-sink | tr -d '\n') 
HEADPHONE="alsa_output.usb-FiiO_DigiHug_USB_Audio-01.analog-stereo"
SPEAKER="alsa_output.pci-0000_00_1b.0.analog-stereo"

if [ "$CURRENT_PROFILE" = "$HEADPHONE" ] ; then
        pactl set-default-sink "$SPEAKER"
        dunstify "Audio profile: SPEAKER" & 
else 
        pactl set-default-sink "$HEADPHONE"
        dunstify "Audio profile: HEADPHONE" & 
fi
