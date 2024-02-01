class CreateSemesterHasExams < ActiveRecord::Migration[7.1]
  def change
    create_table :semester_has_exams do |t|
      t.references :semester, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
