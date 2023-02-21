# My Windows 10 Dev Setup runbook

Personal runbook for when I decide to distrohop for the 13th time this month.

Also I am too lazy to write a PS script

## Windows settings:

    1. Color scheme: 
        default Windows Mode: dark
        default App Mode: light
        transparency effects: true

    2. Taskbar
        Remove all the bloat
        Unlock taskbar -> Centre apps
        Unlock taskbar -> Add links, remove title


## Tools I use

    1. Brave browser
        Extensions:
        1. Dark reader
        2. Vimium
        3. Unhook 
        4. Return dislike
        5. Markdown Viewer

    2. Discord

    3. Steam

    4. Spotify

    5. Microsoft PowerToys

    6. Windows Terminal

    7. Visual Studio Code

    8. Windscribe VPN

    9. PicoTorrent

    10. Microsoft Office Suite


## Development Environment Setup:

    1. Windows Terminal Setup:
        1. Install Powershell Core from Microsoft Store 
        2. Overwrite settings.json

    2. Powershell User Profile:
        1. Create a user profile inside ~/.config/powershell/
        2. $PROFILE.CurrentUserCurrentHost > ". $env:USERPROFILE\.config\powershell\user_profile.ps1"
        3. Install modules - PSReadline, PSColor, Terminal-Icons
        4. Import powershell dotfiles

    3. Package Manager
        Scoop:
            1. coreutils
            2. sudo
            3. curl
            4. wget
            5. fzf
            6. neovim
            7. python
            8. gcc
            9. ffmpeg
            10. youtube-dl

    4. Neovim:
        1. Create nvim configuration folder: ~\AppData\Local\nvim
        2. Import neovim dotfiles
