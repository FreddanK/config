if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx fish_greeting
    set -gx fish_prompt_pwd_dir_length 0

    set -gx SVN_EDITOR nvim
    set -gx MAKE_JOBS 4

    alias ll='eza -lg'
    alias bat='batcat'
    alias fd='fdfind'

    zoxide init fish | source
end
