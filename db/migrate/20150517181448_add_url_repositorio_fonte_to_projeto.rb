class AddUrlRepositorioFonteToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :urlRepositorioFonte, :string
  end
end
