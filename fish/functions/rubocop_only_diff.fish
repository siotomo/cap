function rubocop_only_diff
  echo rubocop files different from develop

  if test (count $argv) -eq 0
    echo only check without revision.....
  else
    echo $argv[1] is passed as arg of rubocop
  end

  bundle exec rubocop $argv[1] (git diff develop --diff-filter=dr --name-only ':(exclude)*.erb' | grep -e ".rb")
end
