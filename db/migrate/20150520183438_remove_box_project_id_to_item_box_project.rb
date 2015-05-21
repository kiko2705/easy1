class RemoveBoxProjectIdToItemBoxProject < ActiveRecord::Migration
  def change
    remove_column :item_box_projects, :boxProjectId, :integer
  end
end
