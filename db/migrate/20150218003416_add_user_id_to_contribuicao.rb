class AddUserIdToContribuicao < ActiveRecord::Migration
  def change
    add_column :contribuicaos, :user_id, :integer
  end
end
