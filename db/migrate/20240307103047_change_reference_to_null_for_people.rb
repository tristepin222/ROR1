class ChangeReferenceToNullForPeople < ActiveRecord::Migration[7.1]
  def change
    reversible do |dir|
      dir.up do
      end
      dir.down do
      end
    end
  end
end
