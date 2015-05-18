class AddUserIdToQualificacao < ActiveRecord::Migration
  def change
    add_column :qualificacaos, :user_id, :integer
  end
end
