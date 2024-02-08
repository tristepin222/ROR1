class CreatePersonHaveExams < ActiveRecord::Migration[7.1]
  def change
    create_table :person_have_exams do |t|
      t.integer :grade
      t.references :person, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
