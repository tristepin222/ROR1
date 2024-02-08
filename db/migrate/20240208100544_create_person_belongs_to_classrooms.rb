class CreatePersonBelongsToClassrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :person_belongs_to_classrooms do |t|
      t.date :start_date
      t.date :end_date
      t.references :person, null: false, foreign_key: true
      t.references :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
