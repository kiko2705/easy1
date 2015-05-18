class CreateQualificacaos < ActiveRecord::Migration
  def change
    create_table :qualificacaos do |t|
      t.string :linguagem
      t.string :nivelConhecimento

      t.timestamps
    end
  end
end
