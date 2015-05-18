class AddProjetoIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :projeto_id, :integer
  end
end
