class Qualificacao < ActiveRecord::Base
	belongs_to :user

	def self.search(linguagem, os, ide, repositorio, database)
    return scoped unless linguagem.present? || os.present? ||  ide.present? || repositorio.present? || 
                         database.present?
        where(['linguagem LIKE ? OR os LIKE ? OR ide LIKE ? 
                 OR repositorio LIKE ? OR database LIKE ?', 
                "%#{linguagem}%", "%#{os}%", "%#{ide}%", "%#{repositorio}%", "%#{database}%"])
    end
	
end
