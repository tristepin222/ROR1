class CreatePersonHasSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :person_has_subjects do |t|
      t.references :person, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.integer :current_class

      t.timestamps
    end
  end
end
