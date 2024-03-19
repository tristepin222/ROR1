class AddPeopleTypeToPeople < ActiveRecord::Migration[7.1]
  def change
    change_table :person_learn_subjects do |t|
      t.remove :is_teacher
      t.string :type
    end
  end
end
