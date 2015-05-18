class AddOsToQualificacao < ActiveRecord::Migration
  def change
    add_column :qualificacaos, :os, :string
  end
end
