#!/bin/bash

# Get the active keyboard layout using hyprctl
# It outputs a JSON array like: [{"layout":"us","variant":""}]
# We parse it with jq to get just the layout name.
layout_raw=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap' | head -n 1)

display_text=""

# Map the internal layout names (or substrings) to user-friendly ones
case "$layout_raw" in
    *"English (US)"*) display_text="EN";; # Matches if "English (US)" is anywhere in the string
    *"Arabic"*) display_text="AR";;     # Matches if "Arabic" is anywhere in the string
    *) display_text="$layout_raw";;     # Fallback for other layouts, shows the raw name
esac

# Output the result as a JSON object, as Waybar expects with "return-type": "json"
echo "{\"text\": \"$display_text\"}"
