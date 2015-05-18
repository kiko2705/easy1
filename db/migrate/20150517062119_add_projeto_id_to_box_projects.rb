class AddProjetoIdToBoxProjects < ActiveRecord::Migration
  def change
    add_column :box_projects, :projeto_id, :integer
  end
end
