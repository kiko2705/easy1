class RemoveBoxProjectIdFromItemBoxProject < ActiveRecord::Migration
  def change
    remove_column :item_box_projects, :boxprojectid, :integer
  end
end
