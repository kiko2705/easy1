class AddUrlMailingListToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :urlMailingList, :string
  end
end
