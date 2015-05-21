class CreateCaixas < ActiveRecord::Migration
  def change
    create_table :caixas do |t|
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end
end
