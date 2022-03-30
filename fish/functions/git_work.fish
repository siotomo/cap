function git_work
  echo 'change git config to WORK'
  git config --local user.name 'shiomi'
  git config --local user.email 'shiomi@glomouth.co.jp'
  git config --list
end
