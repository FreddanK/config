if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx fish_greeting
    set -gx fish_prompt_pwd_dir_length 0

    set -gx SVN_EDITOR nvim
    set -gx MAKE_JOBS 4

    abbr l 'eza'
    abbr ll 'eza -lg'
    abbr la 'eza -lga'
    abbr bat 'batcat'
    abbr fd 'fdfind'
    abbr gu 'gitui'
    abbr cfish 'vim ~/.config/fish/config.fish'
    abbr cvim 'vim ~/.config/nvim/init.vim'
    abbr rfish 'source ~/.config/fish/config.fish'

    abbr fzf 'fzf --preview="cat {}"'


    function ..
        cd ..
    end

    function ...
        cd ../..
    end

    function ....
        cd ../../..
    end

    function .....
        cd ../../../..
    end

    function ......
        cd ../../../../..
    end

    zoxide init fish | source
end

# Created by `pipx` on 2024-01-22 14:18:06
set PATH $PATH /home/fredrik/.local/bin

