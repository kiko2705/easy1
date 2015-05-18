class AddArquivoToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :arquivo, :string
  end
end
