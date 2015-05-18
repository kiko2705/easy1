class AddLicencaToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :licenca, :string
  end
end
