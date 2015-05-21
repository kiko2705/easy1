class CreateItemBoxProjects < ActiveRecord::Migration
  def change
    create_table :item_box_projects do |t|
      t.string :nome
      t.string :conteudo

      t.timestamps
    end
  end
end
