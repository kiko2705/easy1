class Caixa < ActiveRecord::Base
     belongs_to :projeto
	 has_many   :items

end
