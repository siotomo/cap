if status is-interactive
    # Commands to run in interactive sessions can go here
end

#peco setting
set fish_plugins theme peco

function fish_user_key_bindings
    bind \cq peco_select_history
end
# pecofish_add_path /usr/local/opt/zip/bin
