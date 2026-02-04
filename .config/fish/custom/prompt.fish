function fish_prompt
    set -l git_info ""
    if command -sq git; and git rev-parse --is-inside-work-tree >/dev/null 2>&1
        set -l branch (git branch --show-current 2>/dev/null; or git describe --tags --exact-match 2>/dev/null; or git rev-parse --short HEAD)

        set git_info " "(set_color blue)"$branch"(set_color normal)

        if not git diff --cached --quiet 2>/dev/null
            set git_info $git_info" "(set_color green)"✚"(set_color normal)
        end

        if not git diff --quiet 2>/dev/null
            set git_info $git_info" "(set_color red)"●"(set_color normal)
        end
    end

    echo (prompt_pwd) $git_info

    echo -n (set_color blue)""(set_color -b blue black)(whoami)(set_color normal)(set_color blue)" "(set_color brmagenta)"» "(set_color normal)

end
