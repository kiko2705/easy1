class AddUrlProjetoOpenHubToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :urlProjetoOpenHub, :string
  end
end
