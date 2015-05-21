class AddBoxProjectIdToItemBoxProject < ActiveRecord::Migration
  def change
    add_column :item_box_projects, :box_project_id, :integer
  end
end
