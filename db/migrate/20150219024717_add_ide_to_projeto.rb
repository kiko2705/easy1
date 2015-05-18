class AddIdeToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :ide, :string
  end
end
