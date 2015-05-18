class AddRepositorioToQualificacao < ActiveRecord::Migration
  def change
    add_column :qualificacaos, :repositorio, :string
  end
end
