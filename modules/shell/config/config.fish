status is-login; and begin

    # Login shell initialisation
    test (tty) = /dev/tty1; and exec Hyprland

end

status is-interactive; and begin

    # Abbreviations
    abbr --add -- cd z
    abbr --add -- la 'eza -a'
    abbr --add -- ll 'eza -l'
    abbr --add -- ls eza
    abbr --add -- lx 'eza -la'
    abbr --add -- vim nvim
    abbr --add -- tls 'tmux ls'
    abbr --add -- tks 'tmux kill-server'
    abbr --add -- tr 'tmux rename-window'
    abbr --add -- ga 'git add'
    abbr --add -- gc 'git commit'
    abbr --add -- gd 'git diff'
    abbr --add -- gs 'git status'
    abbr --add -- gl 'git log --oneline'
    abbr --add -- gp 'git push'
    abbr --add -- gh 'git stash'
    abbr --add -- dkc 'docker ps -a | choose 0 | rg -v "CONTAINER" | xargs docker rm'
    abbr --add -- dki 'docker image ls | choose 2 | rg -v "IMAGE" | xargs docker rmi'
    abbr --add -- dkv 'docker volume ls | choose 1 | rg -v "VOLUME" | xargs docker volume rm'
    # Aliases

    # Interactive shell initialisation
    set -g fish_key_bindings fish_vi_key_bindings
    bind -M insert \cy accept-autosuggestion
    bind -M insert \cf 'sessionizer; commandline -f repaint'
    bind -M insert \cp up-or-search
    bind -M insert \cn down-or-search
    set fish_greeting

    set -x -U GOPATH ~/.cache/go
    set -x -U _JAVA_OPTIONS -Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
    set -x -U GRADLE_USER_HOME "$XDG_DATA_HOME"/gradle

    fish_add_path ~/.cache/go/bin/

end
