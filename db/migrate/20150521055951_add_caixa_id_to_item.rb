class AddCaixaIdToItem < ActiveRecord::Migration
  def change
    add_column :items, :caixa_id, :integer
  end
end
