#!/usr/bin/env bash

# Fuzzel clipboard manager using cliphist and wl-clipboard

# Get clipboard history from cliphist and display in fuzzel
selected=$(cliphist list | fuzzel --dmenu --prompt="Clipboard: " --lines=10)

# If something was selected, decode and copy it
if [ -n "$selected" ]; then
    # cliphist decode takes the full line and extracts the clipboard content
    cliphist decode <<<"$selected" | wl-copy
fi
