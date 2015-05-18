class CreateContribuicaos < ActiveRecord::Migration
  def change
    create_table :contribuicaos do |t|
      t.string :versao
      t.date :data
      t.string :arquivo
      t.belongs_to :usuario, index: true

      t.timestamps
    end
  end
end
