class AddUrlIssueTrackerToProjeto < ActiveRecord::Migration
  def change
    add_column :projetos, :urlIssueTracker, :string
  end
end
