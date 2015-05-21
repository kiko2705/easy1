class Projeto < ActiveRecord::Base
	has_many  :users
  has_many  :box_projects
  validates :nome, presence: true

    # Para guardar arquivos no DropBox. O arquivo dropbox.yml contém as senhas do dropbox
	has_attached_file   :arquivoproj,
                      :storage => :dropbox,
                      :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  do_not_validate_attachment_file_type :arquivoproj

    # busca avançada, por enquanto não está sendo utilizada
    def self.procura_projeto(linguagem, os, ide, repositorio, database)
    return scoped unless linguagem.present? || os.present? ||  ide.present? || repositorio.present? || 
                         database.present?
        where(['linguagem LIKE ? OR os LIKE ? OR ide LIKE ? 
                 OR repositorio LIKE ? OR database LIKE ?', 
                "%#{linguagem}%", "%#{os}%", "%#{ide}%", "%#{repositorio}%", "%#{database}%"])
    end

end
