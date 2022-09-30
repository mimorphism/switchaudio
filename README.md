Bash script for toggling between audio sinks (headphones and speakers)

To use, make sure you're using pulseaudio and you have dunstify(notification provider) installed.
Use pactl list to get your respective sinks (headphones or speakers) and add them to the respective vars
And then bind the script to any desired key (e.g with sxhkd)
