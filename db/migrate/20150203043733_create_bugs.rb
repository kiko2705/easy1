class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.integer :numero
      t.string :descricao
      t.string :dificuldade
      t.string :colaborador

      t.timestamps
    end
  end
end
