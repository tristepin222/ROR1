class CreateClassrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :number
      t.integer :room

      t.timestamps
    end
  end
end
