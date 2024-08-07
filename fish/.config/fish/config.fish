if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx fish_greeting
    set -gx fish_prompt_pwd_dir_length 0

    set -gx SVN_EDITOR nvim
    set -gx MAKE_JOBS 4

    abbr l 'eza'
    abbr ll 'eza -lg'
    abbr la 'eza -lga'
    abbr cat 'batcat'
    abbr bat 'batcat'
    abbr fd 'fdfind'
    abbr gu 'gitui'
    abbr cfish 'vim ~/.config/fish/config.fish'
    abbr cvim 'vim ~/.config/nvim/init.vim'
    abbr rfish 'source ~/.config/fish/config.fish'
    abbr tm 'tmux'
    abbr ta 'tmux a'

    function vim
        nvim $argv
    end

    function ..
        cd ..
    end

    function ...
        cd ../..
    end

    function ...
        cd ../../..
    end

    function ....
        cd ../../../..
    end

    function .....
        cd ../../../../..
    end

    zoxide init fish | source
end
