{
    "modules-left": ["custom/power", "hyprland/workspaces"],
    "modules-center": ["clock"],
    "modules-right": ["custom/pomodoro", "network", "battery", "pulseaudio", "custom/weather", "hyprland/language", "tray"],

    "custom/power": {
        "format" : "⭘ ",
        "tooltip": false,
        "on-click": "wlogout -b 3",
    },

    "hyprland/workspaces": {
        "format": "{icon}",
    },

    "custom/pomodoro": {
	    "format": "{} ",
	    "return-type": "json",
	    "exec": "waybar-module-pomodoro --autow --autob",
	    "on-click": "waybar-module-pomodoro toggle",
	    "on-click-right": "waybar-module-pomodoro reset",
    },

    "custom/weather":{
      "format": " {} ",
      "interval": 300,
      "exec": "curl -s wttr.in/LosAngles\\?format=%c | sed 's/ //g'",
    },

    "sway/mode": {
        "format": "|{}|"
    },

    "hyprland/language": {
        "format": "|{}|"
    },

    "tray": {
        "icon-size": 15,
        "spacing": 5,
        "cursor": true,
    },

    "bluetooth": {
        "format": " 󰂯 ",
        "format-disabled": " 󰂲 ",
        "format-connected": " 󰂱 ",
        "on-click": "blueman-manager",
    },

    "network": {
        "format-wifi": "  {essid}",
        "format-ethernet": "  Ethernet",
        "format-linked": "  Linked (No IP)",
        "format-disconnected": "  Disconnected",
        "tooltip": false,
    },

    "battery": {
        "states": {
            "good": 85,
            "warning": 30,
            "critical": 15
        },
        "format": "{icon} {capacity}%",
        "format-full": "{icon} {capacity}%",
        "format-plugged": " {capacity}%",
        "format-charging": " {capacity}%",
        "format-alt": "{icon} {capacity}%",
        "format-icons": [" ", " ", " ", " ", " "],
        "tooltip-format": "{time}",
    },

    "pulseaudio": {
        "format": "{icon} {volume}%",
        "format-muted": "  {volume}%",
        "format-bluetooth": " {volume}%",
        "format-bluetooth-muted": "  {volume}%",
        "format-icons": {
            "headphone": " ",
            "headset": " ",
            "default": [" "],
        },
        "on-click": "pavucontrol",
    },

    "clock": {
        "format": "{:%a %d/%m/%Y ~ %H:%M}",
        "tooltip-format": "<span size='15000'><tt>{calendar}</tt></span>",
        "calendar": {
            "mode": "month",
            "format": {
                "months": "<span color='#F5C2E7'><b>{}</b></span>",
                "weekdays": "<span color='#89B4FA'><b>{}</b></span>",
                "days": "<span color='#CDD6F4'><b>{}</b></span>",
                "today": "<span color='#F9E2AF'><b>{}</b></span>",
            }
        },
        "on-click": "swaync-client -t -sw",
    }
}
