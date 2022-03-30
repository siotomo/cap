if defined?(PryByebug)
  Pry.commands.alias_command "c", "continue"
  Pry.commands.alias_command "s", "step"
  Pry.commands.alias_command "n", "next"
  Pry.commands.alias_command "f", "finish"
  Pry.commands.alias_command "b", "break"
  Pry.commands.alias_command "e", "exit"

  # メモ
  # ls/cdコマンド

  # モデル名を大文字部分だけの省略記法で使うこともできるようになりそう
  def hoge
    all_table_names = ActiveRecord::Base.connection.tables
    all_model_names = all_table_names.map(&:camelize)
    # short_names = all_model_names.map { |model_name| model_name.split('').filter{|char| char == char.upcase}.join('') }
    # all_models = all_table_names.map(&:classify).map(&:safe_constantize).compact

    all_model_names.each.with_index do |model_name, i|
      short_name = model_name.split('').filter{|char| char == char.upcase}.join('')
      model = all_table_names.classify.map(&:safe_constantize)
      eval("#{short_names[i]} = model")
    end
  end
end
