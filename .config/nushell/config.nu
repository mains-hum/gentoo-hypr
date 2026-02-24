$env.config = {
    show_banner: false
    edit_mode: vi 
    cursor_shape: {
        vi_insert: block
        vi_normal: underscore
    }
}

$env.PROMPT_COMMAND = { || 
    let path = ($env.PWD | str replace $env.HOME "~")
    $"[($path)]"
}
$env.PROMPT_COMMAND_RIGHT = { || "" }

def ze [] {
    zellij attach -c last
}

if "ZELLIJ" not-in ($env | columns) {
    ze
}

alias la = ls -a
alias .. = cd ..
alias ... = cd ../..

alias gs = git status
alias ga = git add
alias gc = git commit
alias gcl = git clone
alias gp = git push
alias gpom = git push origin main

alias scb = sudo cargo build
alias scr = sudo cargo run
alias cb = cargo build
alias cr = cargo run

alias grep = grep --color=auto
alias sh = sudo -E hx
alias h = hx
alias y = yazi
alias s = synapce
alias c = clear
alias f = fastfetch

alias install = sudo xbps-install -S

alias m = sudo mount /dev/mmcblk0p1 /mnt/photo/
alias cm = cd /mnt/photo/DCIM/101MSDCF/

alias re = sudo reboot
alias off = sudo poweroff
alias sleep = sudo zzz
