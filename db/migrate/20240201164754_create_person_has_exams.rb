class CreatePersonHasExams < ActiveRecord::Migration[7.1]
  def change
    create_table :person_has_exams do |t|
      t.references :person, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true
      t.decimal :grade

      t.timestamps
    end
  end
end
