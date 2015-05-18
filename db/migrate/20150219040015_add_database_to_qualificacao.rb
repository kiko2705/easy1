class AddDatabaseToQualificacao < ActiveRecord::Migration
  def change
    add_column :qualificacaos, :database, :string
  end
end
