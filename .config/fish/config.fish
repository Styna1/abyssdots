#source /usr/share/cachyos-fish-config/cachyos-config.fish
source ~/.config/fish/custom/aliases.fish
source ~/.config/fish/custom/bindings.fish
source ~/.config/fish/custom/functions.fish
source ~/.config/fish/custom/prompt.fish

function fish_greeting
    fastfetch
end


# Add ~/.local/bin to PATH
if test -d ~/.local/bin
    if not contains -- ~/.local/bin $PATH
        set -p PATH ~/.local/bin
    end
end

# Add depot_tools to PATH
if test -d ~/Applications/depot_tools
    if not contains -- ~/Applications/depot_tools $PATH
        set -p PATH ~/Applications/depot_tools
    end
end