function git_private
  echo 'change git config to PRIVATE'
  git config --local user.name 'rukachess'
  git config --local user.email 'pc.siomi@gmail.com'
  git config --list
end
