class AddLinguagemToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :linguagem, :string
  end
end
