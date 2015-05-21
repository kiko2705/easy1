class AddProjetoIdToCaixa < ActiveRecord::Migration
  def change
    add_column :caixas, :projeto_id, :integer
  end
end
