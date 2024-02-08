class CreatePersonTeachSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :person_teach_subjects do |t|
      t.date :teach_date
      t.references :person, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
