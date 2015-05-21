class BoxProject < ActiveRecord::Base
	belongs_to :projeto
	has_many   :item_box_projects

	accepts_nested_attributes_for :item_box_projects, :allow_destroy => true
end
