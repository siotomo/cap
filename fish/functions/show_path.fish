function show_path
  echo 'order by priority'

  echo $fish_user_paths | tr " " "\n" | nl
end