class RemoveLinkFromBoxProject < ActiveRecord::Migration
  def change
    remove_column :box_projects, :link, :string
  end
end
