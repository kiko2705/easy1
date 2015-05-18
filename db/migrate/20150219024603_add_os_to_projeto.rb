class AddOsToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :os, :string
  end
end
