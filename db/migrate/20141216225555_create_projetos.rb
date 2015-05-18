class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :nome
      t.string :descricao
      t.date :data_inicio
      t.string :status

      t.timestamps
    end
  end
end
