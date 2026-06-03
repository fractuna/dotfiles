{
    "position": "bottom", // Waybar position (top|bottom|left|right)
    "height": 3, // Waybar height (to be removed for auto height)
    "modules-left": ["sway/workspaces", "sway/mode", "custom/media"],
    "modules-right": ["custom/cwd","custom/separator", "pulseaudio", "custom/separator", "network","custom/separator", "cpu", "custom/separator", "disk", "custom/separator", "memory", "custom/separator", "battery", "custom/separator", "custom/weather", "custom/separator", "clock","custom/separator", "tray", "sway/language"],
    "sway/mode": {
        "format": "<span style=\"italic\">{}</span>"
    },

    "idle_inhibitor": {
        "format": "{icon}",
        "format-icons": {
            "activated": "",
            "deactivated": ""
        }
    },
    "custom/weather":{
      "interval": 300,
      "exec": "curl -s wttr.in/LosAngles\\?format=%c%C | sed 's/ //'",
    },
    "sway/language": {
        "format": "{}",
        "format-en": "🇺🇸",
        "format-de": "🇩🇪",
    },
    "tray": {
        "spacing": 5
    },
    "custom/song": {
      "interval": 30,
      "exec": "~/.opt/src/csong.sh"
    },
    "custom/warp": {
        "interval": 15,
        "exec": "warp-cli status"
    },
    "custom/cwd": {
        "interval": 5,
        "format": "CWD: {}",
        "exec": "head -n 1 /tmp/cwd"
    },
    "clock": {
        "interval": 5,
        "format": "{:%Y-%m-%d %I:%M:%S }",
        "format-alt": "{:%Y-%m-%d}"
    },
    "cpu": {
        "format": "CPU: {usage}%",
        "tooltip": false
    },
    "memory": {
        "format": "MEM: {used}GB/{total}GB"
    },
    "custom/separator": {
        "format": "|",
        "interval": "once",
        "tooltip": false
    },
    "battery": {
        "states": {
            "good": 95,
            "warning": 30,
            "critical": 15
        },
        "format": "B: {capacity}%",
        "format-charging": "CHARGIN {capacity}%",
        "format-full": "FULL {capacity}%",
        "format-plugged": "P: {capacity}%",
        "format-alt": "N: {capacity}",
    },
    "battery#bat2": {
        "bat": "BAT2"
    },
    "network": {
        "interface": "wlp1s0",
        //"format-wifi": "  {essid} ({signalStrength}%)",
        "format-wifi": "W: ({signalStrength}% at {essid})",
        "format-ethernet": "{ifname}: {ipaddr}/{cidr}",
        "format-linked": "{ifname} (No IP)",
        "format-disconnected": "W: Down",
        "format-alt": "{ifname}: {ipaddr}/{cidr}",
        "tooltip": true,
    },
    "disk": {
        "interval": 30,
        "format": " D: {free}/{total} ",
        "path": "/",
        "on-click": "kitty -e gdu /"
    },
    "pulseaudio": {
        "format": "V: {volume}%",
        "format-bluetooth": "󰂰 {volume}%",
        "format-bluetooth-muted": "V: muted",
        "format-muted": "V: muted",
        "on-click": "pavucontrol",
        "on-click-right": "pactl set-sink-mute @DEFAULT_SINK@ toggle",
        "on-scroll-up": "pactl set-sink-volume @DEFAULT_SINK@ +2%",
        "on-scroll-down": "pactl set-sink-volume @DEFAULT_SINK@ -2%"
    },
}
