class CreatePersonLearnSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :person_learn_subjects do |t|
      t.date :learn_date
      t.references :person, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
