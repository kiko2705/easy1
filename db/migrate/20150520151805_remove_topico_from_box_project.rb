class RemoveTopicoFromBoxProject < ActiveRecord::Migration
  def change
    remove_column :box_projects, :topico, :string
  end
end
