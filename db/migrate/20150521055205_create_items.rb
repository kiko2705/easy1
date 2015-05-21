class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :tipo
      t.string :conteudo

      t.timestamps
    end
  end
end
