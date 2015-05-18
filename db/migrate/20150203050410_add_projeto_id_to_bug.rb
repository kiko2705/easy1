class AddProjetoIdToBug < ActiveRecord::Migration
  def change
    add_column :bugs, :projeto_id, :integer
  end
end
