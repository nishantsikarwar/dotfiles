function vsr -d "List recently opened files with vscode"
    set -l vscode_path "$HOME/.config/VSCodium"
    set -l grep

    if type -q rg
        set grep rg -o --no-line-number
    else
        set grep grep -o
    end

    set -l selected (\
    $grep '"path": "/.*[^/]"' "$vscode_path/storage.json" \
    | string replace -a '"path": ' '' \
    | string trim -c '"'\
    | fzf --exit-0 )

    [ -n "$selected" ]; and codium "$selected"
end