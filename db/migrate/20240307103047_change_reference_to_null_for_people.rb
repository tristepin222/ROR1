class ChangeReferenceToNullForPeople < ActiveRecord::Migration[7.1]
  def change
    reversible do |dir|
      dir.up do
        add_reference :people, :locality, index: true, foreign_key: true, null: true
      end
      dir.down do
        remove_reference :people, :locality, index: true, foreign_key: true
      end
    end
  end
end
