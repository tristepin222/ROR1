class AddClassroomNameUnique < ActiveRecord::Migration[7.1]
  def change
    add_index :classrooms, :name, unique: true
  end
end
