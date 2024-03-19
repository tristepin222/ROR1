class AddArchiveBoolToSubjects < ActiveRecord::Migration[7.1]
  def change
    add_column :subjects, :archived, :boolean
  end
end
