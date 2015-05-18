class AddAttachmentArquivoprojToProjetos < ActiveRecord::Migration
  def self.up
    change_table :projetos do |t|
      t.attachment :arquivoproj
    end
  end

  def self.down
    remove_attachment :projetos, :arquivoproj
  end
end
