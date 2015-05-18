class AddUrlPaginaToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :urlPagina, :string
  end
end
