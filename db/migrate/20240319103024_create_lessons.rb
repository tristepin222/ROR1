class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.datetime :date
      t.references :person, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
