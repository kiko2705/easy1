class AddIdeToQualificacao < ActiveRecord::Migration
  def change
    add_column :qualificacaos, :ide, :string
  end
end
