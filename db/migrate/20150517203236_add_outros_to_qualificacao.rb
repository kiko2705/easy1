class AddOutrosToQualificacao < ActiveRecord::Migration
  def change
    add_column :qualificacaos, :outros, :string
  end
end
