class CreatePersonEvaluateExams < ActiveRecord::Migration[7.1]
  def change
    create_table :person_evaluate_exams do |t|
      t.date :exam_date
      t.references :person, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
