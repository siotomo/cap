# Railsの.gitignore配下で開発ように使うメソッド達
class Object
  def ppp(arg)
    p '-----------------------------------------------------'
    arg
    p '-----------------------------------------------------'
  end

  def search_methods(regexp)
    self.class.public_instance_methods(false).grep(regexp)
  end

  def sm(regexp)
    search_methods(regexp)
  end
end