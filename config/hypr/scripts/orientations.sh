#!/bin/bash

# Get current workspace ID
workspace=$(hyprctl activeworkspace -j | jq -r '.id')
STATE_FILE="/tmp/hypr_layout_state_ws_${workspace}"

if [[ ! -f "$STATE_FILE" ]]; then
  echo "left" >"$STATE_FILE"
fi

current_state=$(cat "$STATE_FILE")

case $current_state in
"left")
  hyprctl dispatch layoutmsg "orientationtop"
  echo "top" >"$STATE_FILE"
  ;;
"top")
  hyprctl dispatch fullscreen 0
  echo "fullscreen" >"$STATE_FILE"
  ;;
"fullscreen")
  hyprctl dispatch fullscreen 0 # Exit fullscreen if still active
  hyprctl dispatch layoutmsg "orientationleft"
  echo "left" >"$STATE_FILE"
  ;;
*)
  hyprctl dispatch layoutmsg "orientationleft"
  echo "left" >"$STATE_FILE"
  ;;
esac
