class AddAdministradorToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :administrador, :string
  end
end
