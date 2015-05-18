class AddDatabaseToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :database, :string
  end
end
