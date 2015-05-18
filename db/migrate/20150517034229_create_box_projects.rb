class CreateBoxProjects < ActiveRecord::Migration
  def change
    create_table :box_projects do |t|
      t.string :titulo
      t.text :descricao
      t.string :topico
      t.string :link

      t.timestamps
    end
  end
end
