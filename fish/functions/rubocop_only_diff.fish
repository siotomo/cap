function rubocop_only_diff
  echo rubocopの引数として$argv[1]を渡しました。

  bundle exec rubocop $argv[1] (git diff develop --diff-filter=dr --name-only ':(exclude)*.erb' | grep -e ".rb")
end
