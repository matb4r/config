function fish_prompt --description 'Write out the prompt'                                   

    set stat $status

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __fish_color_blue
        set -g __fish_color_blue (set_color -o blue)
    end

    #Set the color for the status depending on the value
    set __fish_color_status (set_color -o green)
    if test $stat -gt 0
        set __fish_color_status (set_color -o red)
    end

    switch "$USER"

        case root toor

            if not set -q __fish_prompt_cwd
                if set -q fish_color_cwd_root
                    set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
                else
                    set -g __fish_prompt_cwd (set_color $fish_color_cwd)
                end
            end

            printf '%s@%s %s%s%s# ' $USER (prompt_hostname) "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal"

        case '*'

            if not set -q __fish_prompt_cwd
                set -g __fish_prompt_cwd (set_color -o $fish_color_cwd)
            end

            printf '[%s%s%s] %s%s %s(%s%s%s)%s » ' (set_color -o purple) (date "+%H:%M:%S") (set_color -o normal) "$__fish_prompt_cwd" (echo $PWD | sed -e "s|^$HOME|~|") "$__fish_prompt_normal" "$__fish_color_status" "$stat" "$__fish_prompt_normal" "$__fish_prompt_normal"

    end
end

set -x PATH ~/bin:$PATH

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

