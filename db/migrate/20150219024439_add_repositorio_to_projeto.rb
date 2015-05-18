class AddRepositorioToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :repositorio, :string
  end
end
